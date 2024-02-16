import 'package:flutter/material.dart';
import 'package:toc/model/cat.dart';
import 'package:toc/screens/cats_details_screen.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return catDetailsScreen(cat: cat);
        }));
      },
      child: Card(
          child: Column(
        children: [
          Expanded(
              child: Image.network(
            width: double.infinity,
            fit: BoxFit.cover,
            cat.imageLink,
          )),
          Text(cat.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      )),
    );
  }
}
