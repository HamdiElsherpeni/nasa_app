import 'package:dio/dio.dart';
import 'package:nasa_app/core/errors/error_model.dart';

class ServerEception implements Exception {
  final ErrorModel errorModel;

  ServerEception({required this.errorModel});
}
 void handelDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.sendTimeout:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.cancel:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerEception(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 401:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 403:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 404:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 409:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 422:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 504:
            throw ServerEception(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
        }
    }
  }
