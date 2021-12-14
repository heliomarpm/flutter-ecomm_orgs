import 'package:flutter/material.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';

class SignUpScreen extends StatelessWidget {
  final onOpenLogin;

  const SignUpScreen({Key? key, this.onOpenLogin}) : super(key: key);

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Criar uma conta',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Nome completo'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Senha'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Confirmar senha'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: double.infinity),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text('Cadastrar-me'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: GestureDetector(
              onTap: () => onOpenLogin(),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(8),
                child: const Center(
                    child: Text(
                  'Já tenho uma conta',
                  style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
