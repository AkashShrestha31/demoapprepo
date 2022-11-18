// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../features/company_listing/presentations/pages/company_listing_page.dart'
    as _i1;
import '../features/dynamic_form/presentations/pages/form_listing_page.dart'
    as _i3;
import '../features/login/presentations/pages.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CompanyListingRoutes.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CompanyListingPages(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(),
      );
    },
    FormListingRoutes.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FormListingPages(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          CompanyListingRoutes.name,
          path: '/',
        ),
        _i4.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i4.RouteConfig(
          FormListingRoutes.name,
          path: '/form-listing-pages',
        ),
      ];
}

/// generated route for
/// [_i1.CompanyListingPages]
class CompanyListingRoutes extends _i4.PageRouteInfo<void> {
  const CompanyListingRoutes()
      : super(
          CompanyListingRoutes.name,
          path: '/',
        );

  static const String name = 'CompanyListingRoutes';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.FormListingPages]
class FormListingRoutes extends _i4.PageRouteInfo<void> {
  const FormListingRoutes()
      : super(
          FormListingRoutes.name,
          path: '/form-listing-pages',
        );

  static const String name = 'FormListingRoutes';
}
