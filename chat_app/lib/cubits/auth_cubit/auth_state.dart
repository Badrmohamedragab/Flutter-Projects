part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthCubitInitial extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginFailure extends AuthState {
  String errorMessage;
  LoginFailure({required this.errorMessage});
}

final class LoginLoading extends AuthState {}

final class RegisterSuccess extends AuthState {}

final class RegisterFailure extends AuthState {
  String errorMessage;
  RegisterFailure({required this.errorMessage});
}

final class RegisterLoading extends AuthState {}
