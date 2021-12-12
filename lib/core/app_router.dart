import 'package:ecomm/screens/package_details_screen.dart';
import 'package:ecomm/screens/payment_screen.dart';
import 'package:ecomm/screens/producer_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecomm/screens/home_screen.dart';
import 'package:ecomm/screens/login_screen.dart';
import 'package:ecomm/screens/singup_screen.dart';
import 'package:ecomm/screens/favorites_screen.dart';
import 'package:ecomm/screens/profile_screen.dart';

class AppRouter {
  static Route builder(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'singup':
        return MaterialPageRoute(builder: (_) => SingupScreen());
      case 'favorites':
        return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'payment':
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case 'producer-datails':
        return MaterialPageRoute(
          builder: (_) => ProducerDetailsScreen(producer: args),
        );
      case 'package-details':
        return MaterialPageRoute(
          builder: (_) => PackageDetailsScreen(
            package: (args as Map)['package'],
            producer: (args as Map)['producer'],
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => screenError());
    }
  }

  static screenError() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('No route defined for this route'),
      ),
    );
  }

}
