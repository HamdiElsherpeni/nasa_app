import 'package:dio/dio.dart';
import 'package:nasa_app/core/networking/api_endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    if (dio == null) {
      Duration defaultTimeout = Duration(seconds: 30);
      dio = Dio();
      dio!.options
        ..baseUrl = ApiEndPoint.baseUrl
        ..connectTimeout = defaultTimeout
        ..receiveTimeout = defaultTimeout;
      _addDioPrettyLoggerToInterceptors();
      //  _addDioHeaders();
      //     _addDioInterceptorWrapper();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void _addDioPrettyLoggerToInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }

  // static void _addDioHeaders() {
  //   dio!.options.headers = {'Accept': 'application/json'};
  // }

  // static void _addDioInterceptorWrapper() {
  //   dio!.interceptors.add(
  //     InterceptorsWrapper(
  //       onRequest: (options, handler) async {
  //         final String? token = await SharedPrefHelper.getSecureString(
  //           SharedPrefHelperKeys.userToken,
  //         );
  //         if (!token.isNullOrEmpty()) {
  //           options.headers['Authorization'] = 'Bearer $token';
  //         }
  //         return handler.next(options);
  //       },
  //     ),
  //   );
  // }
}

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:nasa_app/core/networking/api_endpoints.dart';
// import 'package:nasa_app/core/database/my_cache_helper.dart';

// class DioFactory {
//   DioFactory._();

//   static const _defaultTimeout = Duration(seconds: 160);
//   static Dio? _dioInstance;

//   static Dio get dio {
//     if (_dioInstance == null) {
//       throw Exception('Dio instance not initialized. Call initialize() first.');
//     }
//     return _dioInstance!;
//   }

//   static Future<void> initialize() async {
//     if (_dioInstance != null) return;

//     _dioInstance = Dio(
//       BaseOptions(
//         baseUrl: ApiEndPoint.baseUrl,
//         connectTimeout: _defaultTimeout,
//         receiveTimeout: _defaultTimeout,
//         sendTimeout: _defaultTimeout,
//       ),
//     );

//     _addAuthInterceptor();
//     _addLoggingInterceptor();
//   }

//   /// Interceptor لإضافة التوكين لكل request
//   static void _addAuthInterceptor() {
//     _dioInstance?.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           final token = await SharedPreferenceManager.getToken();

//           if (token != null && token.isNotEmpty) {
//             options.headers['Authorization'] = 'Bearer $token';
//           }

//           return handler.next(options);
//         },
//         onError: (e, handler) async {
//           // هنا ممكن تضيف هندلة للـ Refresh Token لما السيرفر يرجع Unauthorized
//           if (e.response?.statusCode == 401) {
//             // TODO: استبدلها بعملية refresh token من الباك
//             print("⚠️ Access Token expired - هنا لازم تعمل تجديد للتوكين");
//           }
//           return handler.next(e);
//         },
//       ),
//     );
//   }

//   /// Logging للـ Requests والـ Responses (للـ Debug فقط)
//   static void _addLoggingInterceptor() {
//     if (kDebugMode) {
//       _dioInstance?.interceptors.add(
//         LogInterceptor(
//           requestHeader: true,
//           requestBody: true,
//           responseBody: true,
//         ),
//       );
//     }
//   }

//   /// تحديث التوكين
//   static Future<void> updateAuthToken(String newToken) async {
//     await SharedPreferenceManager.saveToken(newToken);

//     // عشان نتأكد إن أي request بعد كده هيبعت التوكين الجديد
//     _dioInstance?.interceptors.clear();
//     _addAuthInterceptor();
//     _addLoggingInterceptor();
//   }

//   /// مسح التوكين
//   static Future<void> clearAuthToken() async {
//     await SharedPreferenceManager.clearToken();

//     _dioInstance?.interceptors.clear();
//     _addAuthInterceptor();
//     _addLoggingInterceptor();
//   }
// }
