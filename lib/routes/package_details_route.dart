import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/package_details_screen.dart';


class PackageDetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PackageDetailsScreen(
      producer: settings.rawParameters['producer'],
      package: settings.rawParameters['package'],
    );
  }

  @override
  String get path => 'package-details';

  @override
  ScreenType get screenType => materialScreenType;
}
