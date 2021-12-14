// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/payment_screen.dart';

class PaymentRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const PaymentScreen();
  }

  @override
  String get path => 'payment';

  @override
  ScreenType get screenType => materialScreenType;
}
