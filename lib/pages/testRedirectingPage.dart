import 'package:flutter/material.dart';
import 'package:toss/widgets/footer.dart';
import 'package:toss/widgets/header.dart';
import 'package:toss/widgets/setting.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 245, 1),
      appBar: DynamicAppBar(controller: scrollController),
      body: ListView(
        controller: scrollController,
        children: const [
          Setting(),
          Setting(),
          Setting(),
          Setting(),
        ],
      ),
      // bottomNavigationBar: Footer(),
    );
  }
}
