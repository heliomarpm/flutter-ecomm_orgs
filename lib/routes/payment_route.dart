import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:ecomm/screens/payment_screen.dart';

class PaymentRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PaymentScreen();
  }

  @override
  String get path => 'payment';

  @override
  ScreenType get screenType => materialScreenType;
}
