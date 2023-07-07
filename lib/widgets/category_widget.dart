import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final String name;
  const Categories({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 95,
      child: Card(
        elevation: 2,
        color: Colors.deepPurple[200],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            imagePath,
            height: 32,
            width: 30,
          ),
          const SizedBox(height: 5),
          CustomText(
            text: name,
            fontSize: 12,
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
