import 'package:flutter/material.dart';
import 'package:toss/view.dart';
import 'package:provider/provider.dart';

import 'models/foundation.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => InterestModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
