import 'package:dio/dio.dart';
//دي الي حاجه الي من خلالها ممكن نباصي حاجات خلال الريكوست او الريسبونس
class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['ex'] =
        'en'; //اي حاجه بتتباصي ع الريكةوست زي التوكن وما الي ذالك
    super.onRequest(options, handler);
  }
}
