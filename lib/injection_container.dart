import 'package:dempproject/features/company_listing/data/datasources/login_remote_data_sources.dart';
import 'package:dempproject/features/company_listing/data/repositories/company_repository_impl.dart';
import 'package:dempproject/features/company_listing/domain/repositories/company_repository.dart';
import 'package:dempproject/features/company_listing/domain/usecases/company_screen.dart';
import 'package:dempproject/features/dynamic_form/data/datasources/form_remote_data_sources.dart';
import 'package:dempproject/features/dynamic_form/data/repositories/form_repository_impl.dart';
import 'package:dempproject/features/dynamic_form/domain/repositories/form_repository.dart';
import 'package:dempproject/features/dynamic_form/domain/usecases/form_screen.dart';
import 'package:dempproject/features/dynamic_form/presentations/bloc/form_bloc.dart';
import 'package:dempproject/features/login/data/datasources/login_remote_data_sources.dart';
import 'package:dempproject/features/login/data/repositories/login_repository_impl.dart';
import 'package:dempproject/features/login/domain/repositories/login_repository.dart';
import 'package:dempproject/features/login/domain/usecases/login_screen.dart';
import 'package:dempproject/features/login/presentations/bloc/login_bloc.dart';
import 'package:dempproject/routes/app_router.gr.dart';
import 'package:get_it/get_it.dart';

import 'features/company_listing/presentations/bloc/company_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => LoginBloc(screen: sl()),
  );
  sl.registerFactory(
    () => CompanyBloc(screen: sl()),
  );

  sl.registerFactory(
    () => FormBloc(screen: sl()),
  );

  /// For Searching Products [GetSearchProductsBloc]

  //Route
  sl.registerSingleton<AppRouter>(AppRouter());
  // Use cases

  sl.registerLazySingleton(() => GetLoginScreen(sl()));
  sl.registerLazySingleton(() => GetCompanyScreen(sl()));
  sl.registerLazySingleton(() => GetFormScreen(sl()));

  // Repository

  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(loginDataSource: sl()),
  );

  sl.registerLazySingleton<CompanyRepository>(
    () => CompanyRepositoryImpl(companyDataSource: sl()),
  );

  sl.registerLazySingleton<FormRepository>(
    () => FormRepositoryImpl(formDataSource: sl()),
  );

  // Data sources

  sl.registerLazySingleton<LoginDataSource>(
    () => LoginDataSourceImpl(),
  );

  sl.registerLazySingleton<CompanyDataSource>(
    () => CompanyDataSourceImpl(),
  );

  sl.registerLazySingleton<FormDataSource>(
    () => FormDataSourceImpl(),
  );
}
