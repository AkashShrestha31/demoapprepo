import 'dart:convert';
import 'dart:io';

import 'package:dempproject/core/error/exceptions.dart';
import 'package:dempproject/core/usecases/usecase.dart';
import 'package:dempproject/features/dynamic_form/data/models/form_listing.dart';
import 'package:dio/dio.dart';

abstract class FormDataSource {
  /// Gets the cached [ShowSliderModel] which is stored in assets/boardingdata/data/data.json
  /// run with or without internet Connection.
  ///
  /// Throws [CacheException] if no json data is present.
  Future<FormModel> Form(NoParams params);
}

class FormDataSourceImpl implements FormDataSource {
  @override
  Future<FormModel> Form(NoParams params) async {
    // TODO: implement getSliderData
    print("form datasource called");
    try {
      File file = File("assets/data/data.json");
      FormModel? jsonData;
      file.readAsString().then((value) {
        print("value found");
        jsonData = FormModel.fromJson(json.decode(value));
      });

      return jsonData!;
    } on DioError catch (e) {
      throw CacheException();
    }
  }
}
