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
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black87,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.money_off_rounded,
            color: Colors.black87,
          ),
          label: 'Money',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.payment_rounded,
            color: Colors.black87,
          ),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_rounded,
            color: Colors.black87,
          ),
          label: 'Menu',
        ),
      ],
    );
  }
}
