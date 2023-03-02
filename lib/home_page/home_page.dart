import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/component/card_recommend_tutor.dart';

class HomePage extends StatefulWidget {
  Function setNavBarIndex;
  HomePage({super.key, required this.setNavBarIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
            width: double.infinity,
            color: Colors.blueAccent.shade700,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Column(children: [
                const Text('Welcome to TutorConnect!',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                FilledButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white)),
                    onPressed: () {
                      widget.setNavBarIndex(3);
                    },
                    child: const Text(
                      'Book a lesson',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ]),
            )),
        const CardRecommendTutor(),
        const CardRecommendTutor(),
        const CardRecommendTutor(),
        const CardRecommendTutor(),
        const CardRecommendTutor()
      ],
    ));
  }
}
