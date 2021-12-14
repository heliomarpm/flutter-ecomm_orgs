import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_drawer.dart';
import 'package:ecomm/components/orgs_profile_card.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const OrgsDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColors.green, //change your color here
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Pagamento',
            style: TextStyle(
                color: AppColors.darkGrey, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.cart,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Formas de pagamento',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Formas de pagamento cadastradas',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.darkGrey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'Aluracard XXXX.4569',
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'Startcard',
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'PM3card',
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Boleto bancário',
                  icon: Icons.money,
                  data: 'Pessoa física',
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
