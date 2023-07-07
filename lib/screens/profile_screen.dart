import 'package:blacaknyellow_app/provider/user_provider.dart';
import 'package:blacaknyellow_app/screens/bottom_navbar.dart';
import 'package:blacaknyellow_app/screens/leaderboard_screen.dart';
import 'package:blacaknyellow_app/widgets/category_widget.dart';
import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
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
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                          text: 'Aryan Pandit',
                          fontSize: 18,
                          color: Colors.white),
                      CustomText(
                        text: profile.house,
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 18),
              const CustomText(
                  text: 'Aadhar Number :', fontSize: 18, color: Colors.white),
              CustomText(
                text: profile.aadharNo,
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 15),
              const CustomText(
                  text: 'Phone Number: ', fontSize: 18, color: Colors.white),
              CustomText(
                text: profile.phoneNo,
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'School: ',
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: profile.schoolName,
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Categories(
                      imagePath: 'assets/icons/noti.png',
                      name: 'Notifications'),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LeaderBoaredScreen())),
                    child: const Categories(
                        imagePath: 'assets/icons/pod.png', name: 'Leaderboard'),
                  ),
                  const Categories(
                      imagePath: 'assets/icons/set.png', name: 'Settings'),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Card(
                  color: Colors.deepPurple[200],
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/home.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                const CustomText(
                                  text: 'Contributions',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.white)
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/wallet.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                const CustomText(
                                  text: 'View Plans',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.white)
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/send.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                const CustomText(
                                  text: 'Share',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.white)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar()),
                        (route) => false),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icons/h.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(height: 3),
                        const CustomText(
                            text: 'HOME', fontSize: 12, color: Colors.white)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/icons/book.png',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 3),
                      const CustomText(
                          text: 'LEARN', fontSize: 12, color: Colors.white)
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/icons/trophy.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(height: 3),
                      const CustomText(
                          text: 'COMPETITIONS',
                          fontSize: 12,
                          color: Colors.white)
                    ],
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
