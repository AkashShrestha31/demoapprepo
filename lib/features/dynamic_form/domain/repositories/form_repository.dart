import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/dynamic_form/data/models/form_listing.dart';

abstract class FormRepository {
  Future<Either<Failure, FormModel>> Form(NoParams params);
}
