// For ignore null-safety error in deendencies
// @dart=2.9 

// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/app.router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // initialRoute: '/',
      // onGenerateRoute: AppRouter.builder,
      // home: Nuvigator.routes(
      //   screenType: materialScreenType,
      //   initialRoute: 'home',
      //   routes: [
      //     NuRouteBuilder(path: 'home', builder: (_, __, ___) => HomeScreen()),
      //     NuRouteBuilder(path: 'login', builder: (_, __, ___) => LoginScreen()),
      //     NuRouteBuilder(
      //         path: 'signup', builder: (_, __, ___) => SignUpScreen()),
      //     NuRouteBuilder(
      //         path: 'favorites', builder: (_, __, ___) => FavoritesScreen()),
      //     NuRouteBuilder(
      //         path: 'profile', builder: (_, __, ___) => ProfileScreen()),
      //     NuRouteBuilder(
      //         path: 'payment', builder: (_, __, ___) => PaymentScreen()),
      //     NuRouteBuilder(
      //       path: 'producer-details',
      //       builder: (_, __, args) {
      //         final producer = args.rawParameters['producer'] as Producer;
      //         return ProducerDetailsScreen(producer: producer);
      //       },
      //     ),
      //     NuRouteBuilder(
      //       path: 'package-details',
      //       builder: (_, __, args) {
      //         final package = args.rawParameters['package'] as Package;
      //         final producer = args.rawParameters['producer'] as Producer;
      //         return PackageDetailsScreen(
      //           package: package,
      //           producer: producer,
      //         );
      //       },
      //     ),
      //   ],
      // ),
      home: Nuvigator(router: AppRouter())
    );
  }
}
