// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/favorites_screen.dart ';

class FavoritesRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return FavoritesScreen(
      onOpenProducerDetails: (parameters) =>
          nuvigator.open('producer-details', parameters: parameters),
    );
  }

  @override
  String get path => 'favorites';

  @override
  ScreenType get screenType => materialScreenType;
}
