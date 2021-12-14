import 'package:flutter/material.dart';
import 'package:ecomm/core/app_colors.dart';
import 'package:ecomm/core/app_images.dart';

class OrgsPackagesCard extends StatelessWidget {
  final String title;
  final String photo = AppImages.vegetablesPackage;
  final String description;
  final String? price;

  OrgsPackagesCard({Key? key, 
    required this.title,
    required this.description,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            photo,
            width: 65,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
            const SizedBox(height: 10),
            price != null
                ? Text(
                    'R\$ $price',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: AppColors.green,
                    ),
                  )
                : Container(),
            const SizedBox(height: 15),
            const Divider(),
          ],
        )),
      ],
    );
  }
}
