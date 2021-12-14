import 'package:flutter/material.dart';

class OrgsCardsList extends StatelessWidget {
  final List<Widget> cards;
  final double heightList;

  const OrgsCardsList({Key? key, 
    required this.cards,
    required this.heightList
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: heightList,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: cards
        )
    );
  }
}

