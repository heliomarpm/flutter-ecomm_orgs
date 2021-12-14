import 'package:flutter/material.dart';

class OrgsSearchBar extends StatelessWidget {
  const OrgsSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: 50,
      margin: const EdgeInsets.all(12),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "O que você está procurando?",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
