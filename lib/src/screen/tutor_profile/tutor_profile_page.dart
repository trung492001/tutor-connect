import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/share/chip_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorProfilePage extends StatelessWidget {
  const TutorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Teacher Detail')),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://api.app.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1627913015850.00"),
                        radius: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Teacher Name",
                        ),
                        const Text("Teacher", textAlign: TextAlign.left),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CountryFlags.flag(
                                'vn',
                                height: 20,
                                width: 20,
                                borderRadius: 0,
                              ),
                              const Text("Việt Nam")
                            ])
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow)
                        ]),
                        const FaIcon(FontAwesomeIcons.heart)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "I was teaching for 3 years as an ESL teacher I am Tesol certified, I teach kids, adult and professionals. I make sure my class is student-centered. I will help you with your english goal.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 25),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    "Languages",
                    style: TextStyle(fontSize: 17, color: Colors.blue),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(children: [ChipCustom(text: "English")])),
                ]),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Education",
                        style: TextStyle(fontSize: 19, color: Colors.blue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            "Bachelor Of Elementary education at Stratford International School",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ))
                    ]),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Experience",
                        style: TextStyle(fontSize: 19, color: Colors.blue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            "I have 3 years teaching experience both kids and adult as a classroom teacher and as an ESL Teacher in Vietnam in public schools and centers.",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ))
                    ]),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Interests",
                        style: TextStyle(fontSize: 19, color: Colors.blue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            "traveling, reading, watching movies, learn foreign language",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ))
                    ]),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Profession",
                        style: TextStyle(fontSize: 19, color: Colors.blue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            "Teacher",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ))
                    ]),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Specialties",
                        style: TextStyle(fontSize: 19, color: Colors.blue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            "traveling, reading, watching movies, learn foreign language",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ))
                    ]),
                const SizedBox(height: 25),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    "Interests",
                    style: TextStyle(fontSize: 19, color: Colors.blue),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 12, top: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ChipCustom(text: "English for kids"),
                            ChipCustom(text: "STARTERS"),
                            ChipCustom(text: "MOVERS"),
                          ]))
                ]),
              ],
            )));
  }
}
