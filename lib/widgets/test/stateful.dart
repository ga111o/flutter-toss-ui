import 'package:flutter/material.dart';

class StatefulWidgetTest extends StatefulWidget {
  const StatefulWidgetTest({super.key});

  @override
  State<StatefulWidgetTest> createState() => _StatefulWidgetTestState();
}

class _StatefulWidgetTestState extends State<StatefulWidgetTest> {
  int counter = 0;

  void plusFunc() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: plusFunc,
              icon: const Icon(
                Icons.add_box_rounded,
                size: 50,
              )),
          Text(
            '$counter',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
