import 'package:blacaknyellow_app/global_variables.dart';
import 'package:blacaknyellow_app/provider/user_provider.dart';
import 'package:blacaknyellow_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPerformances extends StatelessWidget {
  const TopPerformances({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isHeartClicked = ref.watch(heartProvider);
      return SizedBox(
        height: 370,
        // width: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: GlobalVariables.topPerformCard.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => showSnackBar(
                    'Clicked on - ${GlobalVariables.topPerformCard[index]['nameAge']!}',
                    context),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(GlobalVariables
                                .topPerformCard[index]['profilePic']!),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            GlobalVariables.topPerformCard[index]['nameAge']!,
                            style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            GlobalVariables.topPerformCard[index]['mainPic']!,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        GlobalVariables.topPerformCard[index]['description']!,
                        style: GoogleFonts.aBeeZee(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('House- Pegasus',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'School- ${GlobalVariables.topPerformCard[index]['school']!}',
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  final heartNoti =
                                      ref.read(heartProvider.notifier);
                                  heartNoti.toggeleHreart();
                                },
                                child: Icon(
                                  isHeartClicked
                                      ? Icons.favorite_outlined
                                      : Icons.favorite_border_outlined,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                GlobalVariables.topPerformCard[index]
                                    ['upvotes']!,
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.white, fontSize: 9),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
