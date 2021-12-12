import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/favorites_screen.dart';
import 'package:ecomm/screens/home_screen.dart';
import 'package:ecomm/screens/login_screen.dart';
import 'package:ecomm/screens/package_details_screen.dart';
import 'package:ecomm/screens/payment_screen.dart';
import 'package:ecomm/screens/producer_details_screen.dart';
import 'package:ecomm/screens/profile_screen.dart';
import 'package:ecomm/screens/singup_screen.dart';

import 'models/package_model.dart';
import 'models/producer_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // initialRoute: '/',
      // onGenerateRoute: AppRouter.builder,
      home: Nuvigator.routes(
        screenType: materialScreenType,
        initialRoute: 'home',
        routes: [
          NuRouteBuilder(path: 'home', builder: (_, __, ___) => HomeScreen()),
          NuRouteBuilder(path: 'login', builder: (_, __, ___) => LoginScreen()),
          NuRouteBuilder(
              path: 'singup', builder: (_, __, ___) => SingupScreen()),
          NuRouteBuilder(
              path: 'favorites', builder: (_, __, ___) => FavoritesScreen()),
          NuRouteBuilder(
              path: 'profile', builder: (_, __, ___) => ProfileScreen()),
          NuRouteBuilder(
              path: 'payment', builder: (_, __, ___) => PaymentScreen()),
          NuRouteBuilder(
            path: 'producer-details',
            builder: (_, __, args) {
              final producer = args.rawParameters['producer'] as Producer;
              return ProducerDetailsScreen(producer: producer);
            },
          ),
          NuRouteBuilder(
            path: 'package-details',
            builder: (_, __, args) {
              final package = args.rawParameters['package'] as Package;
              final producer = args.rawParameters['producer'] as Producer;
              return PackageDetailsScreen(
                package: package,
                producer: producer,
              );
            },
          ),
        ],
      ),
    );
  }
}
