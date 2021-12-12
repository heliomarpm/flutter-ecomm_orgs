import 'package:flutter/material.dart';
import 'package:ecomm/core/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // home: HomeScreen(),
      initialRoute: '/',
      onGenerateRoute: AppRouter.builder,
    );
  }
}