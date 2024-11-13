class SignupModel {
  final String name;
  final int password;
  final String email;
  final int phone;

  SignupModel({required this.name, required this.password, required this.email, required this.phone});

  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return SignupModel(
      name: json["name"],
      password: json["password"],
      email: json["email"],
      phone: json["phone"],
    );
  }
}