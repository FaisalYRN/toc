import 'package:flutter/material.dart';
import 'package:toc/Widgets/cat_details.dart';
import 'package:toc/model/cat.dart';

class catDetailsScreen extends StatelessWidget {
  final Cat cat;
  const catDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),
    );
  }
}
