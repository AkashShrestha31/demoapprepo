import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/dynamic_form/domain/usecases/form_screen.dart';
import 'package:dempproject/features/dynamic_form/presentations/bloc/form_event.dart';
import 'package:dempproject/features/dynamic_form/presentations/bloc/form_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class FormBloc extends Bloc<FormEvent, FormDataState> {
  final GetFormScreen getFormScreen;

  FormBloc({
    required GetFormScreen screen,
  })  : assert(screen != null),
        getFormScreen = screen,
        super(FormEmpty()) {
    on<GetFormData>(_onForm);
  }

  Future<void> _onForm(
    GetFormData event,
    Emitter<FormDataState> emit,
  ) async {
    emit(FormLoading());
    final failureOrData = await getFormScreen(NoParams());
    emit(failureOrData.fold((failure) => FormError(message: _mapFailureToMessage(failure)), (data) => FormLoaded(model: data)));
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
