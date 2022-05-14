import 'package:flutter/material.dart';
import 'package:test_appbar_animation/di/dep_injection.dart';
import 'package:test_appbar_animation/presentation/screens/home/home.dart';

void main() async {
  await injectDataModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
