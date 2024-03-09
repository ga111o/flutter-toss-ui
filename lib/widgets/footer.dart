import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          Icon(Icons.money_off_rounded, color: Colors.black38),
          Icon(Icons.shopping_bag_rounded, color: Colors.black38),
          Icon(Icons.filter_list_alt, color: Colors.black38),
          Icon(Icons.menu_rounded, color: Colors.black38),
        ],
      ),
    );
  }
}
