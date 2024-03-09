import 'package:flutter/material.dart';

class Tossbank extends StatelessWidget {
  const Tossbank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6.5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Toss Bank',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade500,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
