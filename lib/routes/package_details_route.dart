// ignore_for_file: import_of_legacy_library_into_null_safe
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

import 'package:ecomm/models/package_model.dart';
import 'package:ecomm/models/producer_model.dart';
import 'package:ecomm/screens/package_details_screen.dart';

class PackageDetailArgs {
  final Producer producer;
  final Package package;

  PackageDetailArgs({
    required this.producer,
    required this.package,
  });


  Map<String, dynamic> toMap() {
    return {
      'producer': producer.toMap(),
      'package': package.toMap(),
    };
  }

  factory PackageDetailArgs.fromMap(Map<String, dynamic> map) {
    return PackageDetailArgs(
      producer: Producer.fromMap(map['producer']),
      package: Package.fromMap(map['package']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PackageDetailArgs.fromJson(String source) => PackageDetailArgs.fromMap(json.decode(source));
}

class PackageDetailsRoute extends NuRoute<NuRouter, PackageDetailArgs, String> {
  @override
  Widget build(BuildContext context, NuRouteSettings<PackageDetailArgs> settings) {
    return PackageDetailsScreen(
      producer: settings.args.producer,
      package: settings.args.package,
    );
  }

  @override
  ParamsParser<PackageDetailArgs> get paramsParser => PackageDetailArgs.fromMap;

  @override
  String get path => 'package-details';

  @override
  ScreenType get screenType => materialScreenType;
}
