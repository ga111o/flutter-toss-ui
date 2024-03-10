import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: const Row(
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
