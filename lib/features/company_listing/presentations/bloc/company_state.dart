import 'package:dempproject/features/company_listing/data/models/company_listing.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CompanyState extends Equatable {
  @override
  List<Object> get props => [];
}

class CompanyEmpty extends CompanyState {}

class CompanyLoading extends CompanyState {}

class CompanyLoaded extends CompanyState {
  final CompanyModel model;

  CompanyLoaded({required this.model});

  @override
  List<Object> get props => [model];
}

class CompanyError extends CompanyState {
  final String message;

  CompanyError({required this.message});

  @override
  List<Object> get props => [message];
}
