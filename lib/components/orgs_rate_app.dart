import 'package:flutter/material.dart';
import 'package:ecomm/core/app_colors.dart';

class OrgsRateApp extends StatelessWidget {
  const OrgsRateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.green, borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Avalie o app',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                SizedBox(height: 7),
                Text(
                  'Sua opinião é muito importante',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
