class SignUpRequestModel {
  final String name;
  final String email;
  final String phone;
  final String password;
  final String confermPassword;

  SignUpRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.confermPassword,
  });
  toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'password': password,
    'confermPassword': confermPassword,
  };
}
