// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/signup_screen.dart';


class SignUpRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return SignUpScreen(
      onOpenLogin: () => nuvigator.open('login'),
    );
  }

  @override
  String get path => 'signup';

  @override
  ScreenType get screenType => materialScreenType;
}
