import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name, phone, password;

  const User(
  {
    required this.name,
    required this.phone,
    required this.password,
}
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
    name, phone , password
  ];

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      phone: json["phone"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "phone": phone,
      "password": password,
    };
  }

//
}