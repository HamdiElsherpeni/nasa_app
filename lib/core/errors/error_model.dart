class ErrorModel {
  final int status;
  final String errorMasseg;

  ErrorModel({required this.status, required this.errorMasseg});

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData['status'],
      errorMasseg: jsonData['ErrorMessage'],
    );
  }
}
