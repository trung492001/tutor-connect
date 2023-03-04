import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/share/chip_custom.dart';
import 'package:flutter_application_1/src/screen/tutor_profile/tutor_profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardRecommendTutor extends StatelessWidget {
  const CardRecommendTutor({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TutorProfilePage()),
          );
        },
        child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: -10)
            ]),
            child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Row(children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple.shade700,
                          child: const Text('D'),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Abby',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  FaIcon(FontAwesomeIcons.heart)
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow)
                                ],
                              ),
                              Row(children: [ChipCustom(text: "English")])
                            ],
                          ),
                        )
                      ]),
                      const Text(
                          'I was teaching for 3 years as an ESL teacher I am Tesol certified, I teach kids, adult and professionals. I make sure my class is student-centered. I will help you with your english goal.',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis)
                    ])))));
  }
}
