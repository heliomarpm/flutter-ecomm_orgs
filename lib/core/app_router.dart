import 'package:flutter/material.dart';
import 'package:ecomm/screens/package_details_screen.dart';
import 'package:ecomm/screens/payment_screen.dart';
import 'package:ecomm/screens/producer_details_screen.dart';
import 'package:ecomm/screens/home_screen.dart';
import 'package:ecomm/screens/login_screen.dart';
import 'package:ecomm/screens/signup_screen.dart';
import 'package:ecomm/screens/favorites_screen.dart';
import 'package:ecomm/screens/profile_screen.dart';

class AppRouter {
  static Route builder(RouteSettings settings) {
    final args = settings.arguments as Map;

print(settings.name);
print(args);
    switch (settings.name) {
      case '/':
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'signup':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case 'favorites':
        return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'payment':
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case 'producer-details':
        return MaterialPageRoute(
          builder: (_) => ProducerDetailsScreen(producer: args['producer']),
        );
      case 'package-details':
        return MaterialPageRoute(
          builder: (_) => PackageDetailsScreen(
            package: args['package'],
            producer: args['producer'],
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
