import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/login/data/models/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(Params params);
}
