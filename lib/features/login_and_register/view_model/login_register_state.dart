part of 'login_register_cubit.dart';


abstract class LoginRegisterState {}

class LoginRegisterInitial extends LoginRegisterState {}

class RegisterLoading extends LoginRegisterState {}
class RegisterFailure extends LoginRegisterState {
  String errorMessage;
  RegisterFailure({required this.errorMessage});
}
class RegisterSuccess extends LoginRegisterState {}
class LoginLoading extends LoginRegisterState {}
class LoginFailure extends LoginRegisterState {
  String errorMessage;
  LoginFailure({required this.errorMessage});
}
class LoginSuccess extends LoginRegisterState {}

class ChangeVisibleIcon extends LoginRegisterState {}
