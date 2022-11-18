import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/login/data/datasources/login_remote_data_sources.dart';
import 'package:dempproject/features/login/data/models/login_model.dart';
import 'package:dempproject/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  Future<Either<Failure, LoginModel>> login(Params params) async {
    try {
      final localData = await loginDataSource.Login(params);
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
