import 'package:flutter/material.dart';
import 'package:toss/widgets/TossMoney.dart';
import 'package:toss/widgets/account.dart';
import 'package:toss/widgets/footer.dart';
import 'package:toss/widgets/header.dart';
import 'package:toss/widgets/setting.dart';
import 'package:toss/widgets/tossbank.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(240, 240, 245, 1),
        appBar: const Header(),
        body: ListView(
          children: const [
            Tossbank(),
            Account(),
            TossMoney(),
            Setting(),
          ],
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
