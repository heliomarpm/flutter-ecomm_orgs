import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_drawer.dart';
import 'package:ecomm/components/orgs_profile_card.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';

class ProfileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const OrgsDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Perfil',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkGrey),
                ),
                IconButton(
                    color: Colors.transparent,
                    icon: const Icon(Icons.menu,
                        color: AppColors.green), // set your color here
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    }),
              ]),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppImages.person,
                              width: 80,
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            right: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.enhance_photo_translate,
                                color: Colors.white,
                                size: 20,
                              ),
                              width: 30,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'Leonardo Alurano',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 30),
                  const Text(
                    'Informações do perfil',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const OrgsProfileCard(
                    textArea: 'Nome completo',
                    data: 'Leonardo Alurano',
                    icon: Icons.person,
                  ),
                  const Divider(),
                  const OrgsProfileCard(
                    textArea: 'Endereço',
                    data: 'Rua dos devs, 20',
                    icon: Icons.home,
                  ),
                  const Divider(),
                  const OrgsProfileCard(
                    textArea: 'Pagamento',
                    data: 'DevCard',
                    icon: Icons.credit_card,
                  ),
                  const Divider(),
                  const OrgsProfileCard(
                    textArea: 'Contato',
                    data: '(22) 9.8877-6655',
                    icon: Icons.phone,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
