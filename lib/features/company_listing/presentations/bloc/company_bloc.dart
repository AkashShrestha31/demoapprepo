import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/company_listing/domain/usecases/company_screen.dart';
import 'package:dempproject/features/company_listing/presentations/bloc/company_event.dart';
import 'package:dempproject/features/company_listing/presentations/bloc/company_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final GetCompanyScreen getCompanyScreen;

  CompanyBloc({
    required GetCompanyScreen screen,
  })  : assert(screen != null),
        getCompanyScreen = screen,
        super(CompanyEmpty()) {
    on<GetCompanyData>(_onCompany);
  }

  Future<void> _onCompany(
    GetCompanyData event,
    Emitter<CompanyState> emit,
  ) async {
    emit(CompanyLoading());
    final failureOrData = await getCompanyScreen(NoParams());
    emit(failureOrData.fold((failure) => CompanyError(message: _mapFailureToMessage(failure)), (data) => CompanyLoaded(model: data)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
