import 'package:flutter/material.dart';

import 'component/history_item.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
                "The following is a list of lessons you have attended. You can review the details of the lessons you have attended",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            SizedBox(height: 10),
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
            HistoryItem(request: "abc", review: ""),
            SizedBox(height: 10),
            HistoryItem(request: "", review: "abc"),
          ],
        ));
  }
}
