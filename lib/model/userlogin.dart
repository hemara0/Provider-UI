import 'dart:math';

class ProviderLogin {
  String userName;
  String password;
  String patientId;
  bool validate;

  ProviderLogin(
      {required this.userName,
      required this.password,
      required this.patientId,
      required this.validate});

  factory ProviderLogin.fromJson(Map<String, dynamic> json) {
    return ProviderLogin(
        userName: json['provider_username'],
        password: json['provider_password'],
        patientId: json['provider_id'],
        validate: json['validate']);
  }
}
