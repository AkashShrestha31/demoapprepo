import 'package:auto_route/auto_route.dart';
import 'package:dempproject/features/company_listing/presentations/pages/company_listing_page.dart';
import 'package:dempproject/features/dynamic_form/presentations/pages/form_listing_page.dart';
import 'package:dempproject/features/login/presentations/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: CompanyListingPages,
      initial: true,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: FormListingPages,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
