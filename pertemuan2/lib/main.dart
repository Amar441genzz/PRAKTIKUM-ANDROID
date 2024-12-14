import 'package:flutter/material.dart';
import 'contohstatelesswidget.dart';
import 'contohstatefullwidget.dart';
import 'checkbox01.dart';
import 'checkbox02.dart';
import 'studikasus01.dart';
import 'radiobutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum02',
      home: ContohStatelessWidget(),
    );
  }
}
