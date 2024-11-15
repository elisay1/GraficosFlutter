import 'package:flutter/material.dart';
import 'package:s11/grafico01.dart';
import 'package:s11/grafico02.dart';
import 'package:s11/grafico03.dart';
import 'package:s11/grafico04.dart';
import 'package:s11/grafico05.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: grafico05(),
    );
  }
}
