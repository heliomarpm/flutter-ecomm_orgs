import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/login_screen.dart';

class LoginRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return LoginScreen(
      onOpenSignUp: () => nuvigator.open('signup'),
      onOpenHome: () => nuvigator.open('home'),
    );
  }

  @override
  String get path => 'login';

  @override
  ScreenType get screenType => materialScreenType;
}
