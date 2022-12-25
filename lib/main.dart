import 'package:flutter/material.dart';

import 'features/home/view/pages/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazine App',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const BottomNav(),
    );
  }
}
