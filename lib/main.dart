import 'package:flutter/material.dart';
import 'package:sollaris_web_flutter/app_binding.dart';
import 'package:sollaris_web_flutter/view/pages/main_page.dart';

void main() {
  AppBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

