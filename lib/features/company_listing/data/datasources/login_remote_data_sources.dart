import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/company_listing/data/models/company_listing.dart';
import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';

abstract class CompanyDataSource {
  /// Gets the cached [ShowSliderModel] which is stored in assets/boardingdata/data/data.json
  /// run with or without internet Connection.
  ///
  /// Throws [CacheException] if no json data is present.
  Future<CompanyModel> Company(NoParams params);
}

class CompanyDataSourceImpl implements CompanyDataSource {
  @override
  Future<CompanyModel> Company(NoParams params) async {
    // TODO: implement getSliderData
    Dio dio = Dio();

    try {
      dio.interceptors.add(
        DioLoggingInterceptor(
          level: Level.body,
          compact: false,
        ),
      );
      var res = await dio.get("https://gateway.cronlink.ca/api/v1/authentication/companies-listing");
      print(res.data);
      return CompanyModel.fromJson(res.data);
    } on DioError catch (e) {
      throw CacheException();
    }
  }
}
