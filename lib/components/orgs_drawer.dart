import 'package:flutter/material.dart';
import 'package:ecomm/screens/menu_screen.dart';

class OrgsDrawer extends StatelessWidget {
  const OrgsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: MenuScreen());
  }
}
