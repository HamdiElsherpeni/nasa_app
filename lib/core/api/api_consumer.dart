abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData=false
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData=false

  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData=false

  });
  Future<dynamic> delet(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData=false

  });
}
