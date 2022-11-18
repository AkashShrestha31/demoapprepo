import 'package:dempproject/features/dynamic_form/data/models/form_listing.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FormDataState extends Equatable {
  @override
  List<Object> get props => [];
}

class FormEmpty extends FormDataState {}

class FormLoading extends FormDataState {}

class FormLoaded extends FormDataState {
  final FormModel model;

  FormLoaded({required this.model});

  @override
  List<Object> get props => [model];
}

class FormError extends FormDataState {
  final String message;

  FormError({required this.message});

  @override
  List<Object> get props => [message];
}
