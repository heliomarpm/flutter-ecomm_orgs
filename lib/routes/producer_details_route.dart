// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/producer_details_screen.dart';


class ProducerDetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return ProducerDetailsScreen(
      producer: settings.rawParameters['producer'],
      onOpenPackageDetails: (parameters) => nuvigator.open('package-details', parameters: parameters),
    );
  }

  @override
  String get path => 'producer-details';

  @override
  ScreenType get screenType => materialScreenType;
}
