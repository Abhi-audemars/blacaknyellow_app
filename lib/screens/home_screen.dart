import 'package:blacaknyellow_app/utils/global_variables.dart';
import 'package:blacaknyellow_app/screens/profile_screen.dart';
import 'package:blacaknyellow_app/widgets/custom_text.dart';
import 'package:blacaknyellow_app/widgets/top_performances.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalVariables.scaffoledColor,
        toolbarHeight: 15,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Aryan!',
                    style: GoogleFonts.aBeeZee(
                      color: Colors.yellow[700],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfileScreen())),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: GlobalVariables.whiteColor, width: 2.3),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1572460436921-e42ba526dc59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGVlbmFnZSUyMGJveXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.purple,
                    size: 35,
                  ),
                  hintText: 'Search Competition...',
                  hintStyle:
                      GoogleFonts.aBeeZee(color: Colors.white, fontSize: 18),
                  filled: true,
                  fillColor: Colors.purple[100],
                  contentPadding: const EdgeInsets.all(0),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 0.5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const CustomText(
                  text: 'Inspirations', fontSize: 20, color: Colors.white),
              const SizedBox(height: 5),
              const CustomText(
                text: 'View the recent top performances',
                fontSize: 14,
                color: Colors.white60,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 7),
              const TopPerformances(),
              const SizedBox(height: 10),
              const CustomText(
                  text: 'Attention!', fontSize: 20, color: Colors.white),
              const SizedBox(height: 5),
              const CustomText(
                text: 'Pull up your socks for the upcoming competitions',
                fontSize: 14,
                color: Colors.white60,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 10),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(12)),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HGN7XVmiBDAR91VG5PcEkOJTOAGcjyCl6JuqC_gDiiQc0AgLqoIHME1gzobnjV4Up28',
                        fit: BoxFit.cover,
                        height: 160,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Poetry Out Loud',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Date: June 23',
                              style: GoogleFonts.aBeeZee(color: Colors.white),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              'End Date  : June 24',
                              style: GoogleFonts.aBeeZee(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
