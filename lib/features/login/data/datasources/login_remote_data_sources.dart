import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/login/data/models/login_model.dart';
import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';

abstract class LoginDataSource {
  /// Gets the cached [ShowSliderModel] which is stored in assets/boardingdata/data/data.json
  /// run with or without internet Connection.
  ///
  /// Throws [CacheException] if no json data is present.
  Future<LoginModel> Login(Params params);
}

class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<LoginModel> Login(Params params) async {
    // TODO: implement getSliderData
    Dio dio = Dio();
    var formData = {"email": params.username, "password": "P@ssw0rd"};
    try {
      dio.interceptors.add(
        DioLoggingInterceptor(
          level: Level.body,
          compact: false,
        ),
      );
      var res = await dio.post("https://gateway.cronlink.ca/api/v1/authentication/login/", data: FormData.fromMap(formData));
      print(res.data);
      return LoginModel.fromJson(res.data);
    } on DioError catch (e) {
      throw CacheException();
    }
  }
}
