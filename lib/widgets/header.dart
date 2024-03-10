import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: Row(
            children: [
              const SizedBox(width: 10),
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              Text(
                'toss',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  letterSpacing: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              const SizedBox(width: 10),
            ],
          ),
        )
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
