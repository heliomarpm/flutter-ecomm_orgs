import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_menu_card.dart';
import 'package:ecomm/components/orgs_rate_app.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/screens/favorites_screen.dart';
import 'package:ecomm/screens/home_screen.dart';
import 'package:ecomm/screens/payment_screen.dart';
import 'package:ecomm/screens/profile_screen.dart';
import 'login_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkGrey),
              ),
              SizedBox(height: 20),
              OrgsRateApp(),
              SizedBox(height: 30),
              OrgsMenuCard(
                  text: 'Início',
                  icon: Icons.home,
                  action: () => Navigator.pushNamed(context, "home")),
              Divider(),
              OrgsMenuCard(
                text: 'Favoritos',
                icon: Icons.favorite,
                action: () => Navigator.pushNamed(context, 'favorites'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Perfil',
                icon: Icons.person,
                action: () => Navigator.pushNamed(context, 'profile'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Métodos de pagamento',
                icon: Icons.credit_card,
                action: () => Navigator.pushNamed(context, 'payment'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Sair',
                icon: Icons.logout,
                action: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  'login',
                  (route) => false,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
