import 'package:flutter/material.dart';
import 'package:widget_testing/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Widget Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterHome(),
    );
  }
}
