import 'package:catapp/data/entities/cat_model.dart';
import 'package:flutter/material.dart';


class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({Key? key,required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Text(cat.name!),
    );
  }
}