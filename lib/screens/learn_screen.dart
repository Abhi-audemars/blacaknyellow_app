import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: 'LEARN', fontSize: 40, color: Colors.white),
    );
  }
}