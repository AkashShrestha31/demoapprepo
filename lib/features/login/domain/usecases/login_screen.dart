import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/features/login/data/models/login_model.dart';
import 'package:dempproject/features/login/domain/repositories/login_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetLoginScreen implements UseCase<LoginModel, Params> {
  final LoginRepository repository;
  GetLoginScreen(this.repository);
  @override
  Future<Either<Failure, LoginModel>> call(Params params) async {
    return await repository.login(params);
  }
}
