import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/features/dynamic_form/data/models/form_listing.dart';
import 'package:dempproject/features/dynamic_form/domain/repositories/form_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetFormScreen implements UseCase<FormModel, NoParams> {
  final FormRepository repository;
  GetFormScreen(this.repository);
  @override
  Future<Either<Failure, FormModel>> call(NoParams params) async {
    return await repository.Form(params);
  }
}
