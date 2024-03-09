import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black12,
              ),
              width: 100,
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.settings_rounded,
                    color: Colors.black26,
                  ),
                  Text(
                    'setting',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black45),
                  ),
                ],
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black12,
              ),
              width: 100,
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.black26,
                  ),
                  Text(
                    'ADD',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black45),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
