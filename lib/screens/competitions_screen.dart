import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CompetitionsScreen extends StatelessWidget {
  const CompetitionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          CustomText(text: 'COMPETITIONS', fontSize: 40, color: Colors.white),
    );
  }
}
