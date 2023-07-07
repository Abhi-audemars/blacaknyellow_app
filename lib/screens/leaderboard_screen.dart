import 'package:blacaknyellow_app/provider/user_provider.dart';
import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeaderBoaredScreen extends ConsumerWidget {
  const LeaderBoaredScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 35, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: 'Leaderboard', fontSize: 20, color: Colors.white),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white, width: 2.3),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(profile.photoUrl),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              CustomText(
                text: 'This Week: ',
                fontSize: 20,
                color: Colors.grey[350]!,
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: '01',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      SizedBox(width: 10),
                      CustomText(
                          text: 'Red House',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  CustomText(
                      text: '1020 pts',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: '02',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      SizedBox(width: 10),
                      CustomText(
                          text: 'Yellow House',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  CustomText(
                      text: '1020 pts',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: '03',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      SizedBox(width: 10),
                      CustomText(
                          text: 'Blue House',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  CustomText(
                      text: '1020 pts',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: '04',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      SizedBox(width: 10),
                      CustomText(
                          text: 'Green House',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  CustomText(
                      text: '1020 pts',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)
                ],
              ),
              const SizedBox(height: 30),
              CustomText(
                  text: 'Current Team Positions:',
                  fontSize: 20,
                  color: Colors.grey[350]!),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 270,
                    width: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 3,
                    width: 250,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
