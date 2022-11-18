import 'package:dartz/dartz.dart';
import 'package:dempproject/core/error/failures.dart';
import 'package:dempproject/features/company_listing/data/models/company_listing.dart';
import 'package:dempproject/features/company_listing/domain/repositories/company_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetCompanyScreen implements UseCase<CompanyModel, NoParams> {
  final CompanyRepository repository;
  GetCompanyScreen(this.repository);
  @override
  Future<Either<Failure, CompanyModel>> call(NoParams params) async {
    return await repository.Company(params);
  }
}
