import 'package:flutter/material.dart';
import 'package:weddle/home/main_weddle_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weddle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainWeddlePage(),
    );
  }
}
