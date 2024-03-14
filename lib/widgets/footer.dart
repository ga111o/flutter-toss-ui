import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss/pages/testScreen.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const TestScreen()));
            },
            child: const Icon(Icons.home),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const TestScreen()));
            },
            child: const Icon(Icons.money_off_rounded, color: Colors.black38),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const TestScreen()));
            },
            child:
                const Icon(Icons.shopping_bag_rounded, color: Colors.black38),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const TestScreen()));
            },
            child: const Icon(Icons.filter_list_alt, color: Colors.black38),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => TestScreen()));
            },
            child: const Icon(Icons.menu_rounded, color: Colors.black38),
          ),
        ],
      ),
    );
  }
}
