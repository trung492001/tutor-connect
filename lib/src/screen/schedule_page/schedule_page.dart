import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/schedule_page/component/schedule_item.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
                "Here is a list of the sessions you have booked. You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            // Text("Latest book"),
            // Text("Name"),
            // Text.rich(
            //   TextSpan(
            //       text: 'Book name',
            //       style: TextStyle(color: Colors.blue),
            //       children: [
            //         TextSpan(
            //             text: "(page 1)", style: TextStyle(color: Colors.black))
            //       ]),

            // )
            ScheduleItem()
          ],
        ));
  }
}
