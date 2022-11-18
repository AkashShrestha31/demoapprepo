import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/company_listing/data/datasources/login_remote_data_sources.dart';
import 'package:dempproject/features/company_listing/data/models/company_listing.dart';
import 'package:dempproject/features/company_listing/domain/repositories/company_repository.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  final CompanyDataSource companyDataSource;

  CompanyRepositoryImpl({required this.companyDataSource});

  @override
  Future<Either<Failure, CompanyModel>> Company(NoParams params) async {
    try {
      final localData = await companyDataSource.Company(params);
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
