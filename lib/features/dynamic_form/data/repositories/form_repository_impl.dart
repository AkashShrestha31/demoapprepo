import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/dynamic_form/data/datasources/form_remote_data_sources.dart';
import 'package:dempproject/features/dynamic_form/data/models/form_listing.dart';
import 'package:dempproject/features/dynamic_form/domain/repositories/form_repository.dart';

class FormRepositoryImpl implements FormRepository {
  final FormDataSource formDataSource;

  FormRepositoryImpl({required this.formDataSource});

  @override
  Future<Either<Failure, FormModel>> Form(NoParams params) async {
    try {
      final localData = await formDataSource.Form(params);
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
