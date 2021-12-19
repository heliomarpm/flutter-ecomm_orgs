// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:ecomm/routes/payment_route.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/routes/favorites_route.dart';
import 'package:ecomm/routes/home_route.dart';
import 'package:ecomm/routes/login_route.dart';
import 'package:ecomm/routes/package_details_route.dart';
import 'package:ecomm/routes/producer_details_route.dart';
import 'package:ecomm/routes/profile_route.dart';
import 'package:ecomm/routes/singup_route.dart';

class AppRouter extends NuRouter {
  @override
  String get initialRoute => 'home';

  @override
  List<NuRoute> get registerRoutes => [
        LoginRoute(),
        SignUpRoute(),
        HomeRoute(),
        FavoritesRoute(),
        ProfileRoute(),
        ProducerDetailsRoute(),
        PackageDetailsRoute(),
        PaymentRoute()
      ];
}
