import 'package:flutter/material.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';
import 'package:ecomm/screens/home_screen.dart';
import 'package:ecomm/screens/singup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.logoLogin,
              fit: BoxFit.fitWidth,
              width: double.maxFinite,
              // height: 180,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Senha'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: double.infinity),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, 'home'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.green, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Text('Entrar'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'signup',
                    (route) => false,
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Text(
                    'Não tem uma conta?',
                    style: TextStyle(
                        color: AppColors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
