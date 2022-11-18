import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetFormData extends FormEvent {
  GetFormData();

  @override
  List<Object> get props => [];
}
