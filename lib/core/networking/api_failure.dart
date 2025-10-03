import 'dart:io';
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

/// Represents failures coming from server/API calls.
class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

  /// Create a [ServerFailure] from a [DioException].
  factory ServerFailure.fromDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure("⏳ Connection timeout, please try again.");
      case DioExceptionType.sendTimeout:
        return const ServerFailure("⚠️ Request timed out while sending data.");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure("⚠️ Server took too long to respond.");
      case DioExceptionType.badCertificate:
        return const ServerFailure("❌ Invalid certificate, secure connection failed.");
      case DioExceptionType.cancel:
        return const ServerFailure("🚫 Request was cancelled.");
      case DioExceptionType.connectionError:
        return _isNetworkError(error)
            ? const ServerFailure("📡 No Internet connection, please check your network.")
            : const ServerFailure("🔌 Connection error occurred.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: error.response?.statusCode ?? 500,
          data: error.response?.data,
        );
      case DioExceptionType.unknown:
        return _isNetworkError(error)
            ? const ServerFailure("📡 No Internet connection.")
            : const ServerFailure("❓ An unknown error occurred.");
    }
  }

  /// Create a [ServerFailure] from an HTTP [statusCode] and optional [data].
  factory ServerFailure.fromResponse({
    required int statusCode,
    dynamic data,
  }) {
    final parsedMessage = _parseResponseMessage(data);

    switch (statusCode) {
      case 400:
        return ServerFailure(parsedMessage ?? "⚠️ Bad request. Please check your input.");
      case 401:
        return ServerFailure(parsedMessage ?? "🔑 Unauthorized. Please login again.");
      case 403:
        return ServerFailure(parsedMessage ?? "🚫 Access forbidden.");
      case 404:
        return const ServerFailure("❓ Resource not found.");
      case 408:
        return const ServerFailure("⏳ Request timeout, please try again.");
      case 500:
        return const ServerFailure("💥 Internal server error. Please try later.");
      case 503:
        return const ServerFailure("⚠️ Service unavailable. Please try later.");
      default:
        return ServerFailure(
          "${parsedMessage ?? "❓ Unexpected error"} (HTTP $statusCode)",
        );
    }
  }

  // —————— Private Helpers ——————

  /// Parses various shapes of error payloads to extract a user-friendly message.
  static String? _parseResponseMessage(dynamic data) {
    if (data == null) return null;

    if (data is String && data.isNotEmpty) {
      return data;
    }

    if (data is List && data.isNotEmpty) {
      return data.first.toString();
    }

    if (data is Map<String, dynamic>) {
      // 1) check for an "errors" array
      if (data['errors'] is List && (data['errors'] as List).isNotEmpty) {
        final first = (data['errors'] as List).first;
        if (first is Map && first['value'] is String) {
          return first['value'] as String;
        }
        return first.toString();
      }

      // 2) check “message” then “data” fields
      final msg = data['message']?.toString();
      if (msg != null && msg.isNotEmpty) return msg;

      final inner = data['data']?.toString();
      if (inner != null && inner.isNotEmpty) return inner;
    }

    return null;
  }

  /// Detects network-level errors masquerading as DioExceptions.
  static bool _isNetworkError(DioException error) {
    return error.error is SocketException ||
        (error.message?.contains('SocketException') ?? false);
  }
}
