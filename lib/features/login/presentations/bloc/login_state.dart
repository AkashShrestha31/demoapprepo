import 'package:dempproject/features/login/data/models/login_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEmpty extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final LoginModel model;

  LoginLoaded({required this.model});

  @override
  List<Object> get props => [model];
}

class LoginError extends LoginState {
  final String message;

  LoginError({required this.message});

  @override
  List<Object> get props => [message];
}
