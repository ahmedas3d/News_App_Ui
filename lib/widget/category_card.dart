import 'package:fifth2_project/model/category_model.dart';
import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 140,
      width: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(category.image),
        ),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        category.categoryName,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
      )),
    );
  }
}
