import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/company_listing/data/models/company_listing.dart';

abstract class CompanyRepository {
  Future<Either<Failure, CompanyModel>> Company(NoParams params);
}
