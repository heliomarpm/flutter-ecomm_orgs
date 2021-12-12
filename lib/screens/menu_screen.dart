import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_menu_card.dart';
import 'package:ecomm/components/orgs_rate_app.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:nuvigator/next.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nuvigator = Nuvigator.of(context);
    
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
                  action: () => nuvigator.open("home"),
                  ),
              Divider(),
              OrgsMenuCard(
                text: 'Favoritos',
                icon: Icons.favorite,
                action: () => nuvigator.open('favorites'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Perfil',
                icon: Icons.person,
                action: () => nuvigator.open( 'profile'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Métodos de pagamento',
                icon: Icons.credit_card,
                action: () => nuvigator.open('payment'),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Sair',
                icon: Icons.logout,
                action: () => nuvigator.open('login'),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
