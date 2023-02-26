import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardRecommendTutor extends StatelessWidget {
  const CardRecommendTutor({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: -18,
              offset: Offset(-9, 12))
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              FaIcon(FontAwesomeIcons.solidStar,
                                  color: Color(0xFFFF9000)),
                              FaIcon(FontAwesomeIcons.solidStar,
                                  color: Color(0xFFFF9000)),
                              FaIcon(FontAwesomeIcons.solidStar,
                                  color: Color(0xFFFF9000)),
                              FaIcon(FontAwesomeIcons.solidStar,
                                  color: Color(0xFFFF9000)),
                              FaIcon(FontAwesomeIcons.solidStar,
                                  color: Color(0xFFFF9000)),
                            ],
                          ),
                          Row(children: const [
                            Chip(
                              label: Text('English'),
                            )
                          ])
                        ],
                      ),
                    )
                  ]),
                  const Text(
                      'I was teaching for 3 years as an ESL teacher I am Tesol certified, I teach kids, adult and professionals. I make sure my class is student-centered. I will help you with your english goal.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis)
                ]))));
  }
}
