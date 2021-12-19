import 'package:flutter/material.dart';
import 'package:ecomm/components/orgs_drawer.dart';
import 'package:ecomm/components/orgs_stores_card.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/models/producer_model.dart';
import 'package:ecomm/repository/data.dart';

class FavoritesScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final onOpenProducerDetails;

  FavoritesScreen({Key? key, this.onOpenProducerDetails}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Produtores favoritos',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkGrey),
                  ),
                  IconButton(
                    color: Colors.transparent,
                    icon: const Icon(Icons.menu, color: AppColors.green),
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Produtores que você favoritou',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                  future: _generateProducerList(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data as List<Widget>,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future _generateProducerList(BuildContext context) async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final producers = data["producers"];

    for (final producer in producers.keys) {
      final prod = Producer.fromMap(producers[producer]);

      children.add(OrgsStoresCard(
        action: () => onOpenProducerDetails({'producer': prod}),
        img: prod.logo,
        distance: prod.distance,
        title: prod.name,
      ));

      children.add(const SizedBox(height: 10));
    }

    return children;
  }
}
