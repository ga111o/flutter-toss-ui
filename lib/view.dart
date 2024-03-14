import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss/widgets/TossMoney.dart';
import 'package:toss/widgets/account.dart';
import 'package:toss/widgets/footer.dart';
import 'package:toss/widgets/header.dart';
import 'package:toss/widgets/setting.dart';
import 'package:toss/widgets/test/stateful.dart';
import 'package:toss/widgets/tossbank.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      ListView(
        controller: _scrollController,
        children: const [
          Tossbank(),
          Account(),
          Account(),
          Account(),
          Account(),
          Setting(),
        ],
      ),
      const Setting(),
      const Setting(),
      const Setting(),
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 245, 1),
      appBar: DynamicAppBar(controller: _scrollController),
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: Footer(
        currentIndex: _currentIndex,
        onTabTapped: onTabTapped,
      ),
    );
  }
}
