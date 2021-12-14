// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/home_screen.dart';

class HomeRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return HomeScreen(
      onOpenProducerDetails: (parameters) =>
          nuvigator.open('producer-details', parameters: parameters),
    );
  }

  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;
}
