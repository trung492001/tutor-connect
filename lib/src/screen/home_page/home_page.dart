import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/home_page/component/card_recommend_tutor.dart';

import 'dart:convert';

import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

class HomePage extends StatefulWidget {
  Function setNavBarIndex;
  HomePage({super.key, required this.setNavBarIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _firstController = ScrollController();

  Codec<String, String> stringToBase64 = utf8.fuse(base64);

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
                    onPressed: () async {
                      try {
                        debugPrint("Có chạy không vậy?");
                        var options = JitsiMeetingOptions(
                            roomNameOrUrl: "TestTrung19127603");
                        await JitsiMeetWrapper.joinMeeting(
                            options: options,
                            listener: JitsiMeetingListener(
                              onConferenceTerminated: (url, error) => print(
                                  "onConferenceTerminated: url: $url, error: $error"),
                            ));
                      } catch (error) {
                        debugPrint("error: $error");
                      }
                      // widget.setNavBarIndex(3);
                    },
                    child: const Text(
                      'Book a lesson',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ]),
            )),
        const CardRecommendTutor(),
        const SizedBox(height: 15),
        const CardRecommendTutor(),
        const SizedBox(height: 15),
        const CardRecommendTutor(),
        const SizedBox(height: 15),
        const CardRecommendTutor(),
        const SizedBox(height: 15),
        const CardRecommendTutor()
      ],
    ));
  }
}
