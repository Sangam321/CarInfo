import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String email;
  final String password;

  const LoginEntity({
    required this.email,
    required this.password,
  });
  bool get isEmailValid =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
          .hasMatch(email);

  bool get isPasswordValid => password.length >= 6;

  bool get isValid => isEmailValid && isPasswordValid;

  @override
  List<Object?> get props => [email, password];
}
