import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_packages_card.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';
import 'package:ecomm/models/package_model.dart';
import 'package:ecomm/models/producer_model.dart';

class PackageDetailsScreen extends StatelessWidget {
  final Package package;
  final Producer producer;

  const PackageDetailsScreen({Key? key, 
    required this.package,
    required this.producer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Detalhe da cesta',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.packageDetails,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  package.title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                )),
                Text(
                  '${producer.distance} km',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    producer.logo,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  producer.name,
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              producer.description,
              style: const TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              'R\$ ${package.price}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.green,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: double.infinity),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text('Comprar'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Itens da cesta',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: ListView(children: _generatePackageItems(package)),
          )),
        ],
      ),
    );
  }

  List<Widget> _generatePackageItems(Package package) {
    List<Widget> children = [];

    for (final item in package.items) {
      children.add(OrgsPackagesCard(description: "", title: item));
    }

    return children;
  }
}
