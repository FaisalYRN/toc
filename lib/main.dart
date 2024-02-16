import 'package:flutter/material.dart';
import 'package:toc/data/all_cats.dart';
import 'package:toc/model/cat.dart';
import 'package:toc/screens/cats_home_screen.dart';

final cats = allCats.map((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}
