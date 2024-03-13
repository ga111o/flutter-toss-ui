import 'package:flutter/material.dart';
import 'package:toss/widgets/TossMoney.dart';
import 'package:toss/widgets/account.dart';
import 'package:toss/widgets/footer.dart';
import 'package:toss/widgets/header.dart';
import 'package:toss/widgets/setting.dart';
import 'package:toss/widgets/test/stateful.dart';
import 'package:toss/widgets/tossbank.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 245, 1),
      appBar: Header(),
      body: ListView(
        children: const [
          // StatefulWidgetTest(),
          Tossbank(),
          Account(),
          // TossMoney(),
          Setting(),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
