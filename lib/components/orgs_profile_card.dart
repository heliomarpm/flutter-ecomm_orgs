import 'package:flutter/material.dart';
import 'package:ecomm/core/app_colors.dart';

class OrgsProfileCard extends StatelessWidget {
  final IconData icon;
  final String textArea;
  final String data;

  const OrgsProfileCard({
    Key? key,
    required this.icon,
    required this.textArea,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            width: 60,
            height: 60,
            child: Icon(
              icon,
              color: AppColors.darkGrey,
              size: 40,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textArea,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey),
                ),
                const SizedBox(height: 10),
                Text(
                  data,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
