import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss/pages/testRedirectingPage.dart';

class Footer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const Footer({
    super.key,
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: currentIndex,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black26,
      selectedLabelStyle: const TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black26),
      unselectedLabelStyle: const TextStyle(
          fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black87),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.money_off_rounded,
          ),
          label: 'Money',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.payment_rounded,
          ),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_rounded,
          ),
          label: 'Menu',
        ),
      ],
    );
  }
}
