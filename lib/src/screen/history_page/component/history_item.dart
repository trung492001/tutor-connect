import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class HistoryItem extends StatefulWidget {
  const HistoryItem({super.key, required this.request, required this.review});

  final String request;
  final String review;

  @override
  State<StatefulWidget> createState() => _HistoryItemState();
}

class _HistoryItemState extends State<HistoryItem> {
  bool _isOpen = false;
  final DateTime _startTime = DateTime.now();
  final DateTime _endTime = DateTime.now();
  final int _numberLesson = 1;
  late int duration = 0;
  late String unitTime = "";

  @override
  void initState() {
    super.initState();
    Duration difference =
        DateTime.now().difference(DateTime(2023, 3, 5, 21, 30));
    if (difference.inDays > 0) {
      duration = difference.inDays;
      if (difference.inDays <= 1) {
        unitTime = "day";
      } else {
        unitTime = "days";
      }
    } else if (difference.inHours > 0) {
      duration = difference.inHours;
      if (difference.inHours <= 1) {
        unitTime = "hour";
      } else {
        unitTime = "hours";
      }
    } else if (difference.inMinutes > 0) {
      duration = difference.inMinutes;
      if (difference.inMinutes <= 1) {
        unitTime = "minute";
      } else {
        unitTime = "minutes";
      }
    } else if (difference.inSeconds >= 0) {
      duration = difference.inSeconds;
      if (difference.inSeconds <= 1) {
        unitTime = "second";
      } else {
        unitTime = "seconds";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(210, 205, 205, 1)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              DateFormat("EEE, d MMM yy").format(_startTime),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text.rich(TextSpan(text: duration.toString(), children: [
              TextSpan(text: " ", children: [
                TextSpan(
                    text: unitTime, children: const [TextSpan(text: " ago")])
              ])
            ])),
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://api.app.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1627913015850.00"),
                            radius: 40),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Keegan",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Row(children: [
                              CountryFlags.flag(
                                'fr',
                                height: 20,
                                width: 20,
                                borderRadius: 0,
                              ),
                              const SizedBox(width: 5),
                              const Text("France")
                            ]),
                            GestureDetector(
                              child: const Text("Direct Message",
                                  style: TextStyle(color: Colors.blue)),
                              onTap: () {
                                print("tap");
                              },
                            )
                          ],
                        )
                      ],
                    ))),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text.rich(
                      style: const TextStyle(fontSize: 15),
                      TextSpan(text: "Lesson Time: ", children: [
                        TextSpan(
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            text: DateFormat("HH:mm").format(_startTime),
                            children: [
                              TextSpan(text: " - ", children: [
                                TextSpan(
                                    text: DateFormat("HH:mm").format(_endTime))
                              ])
                            ])
                      ]))),
            ),
            const SizedBox(height: 10),
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.request.isNotEmpty
                            ? ExpansionTile(
                                tilePadding:
                                    const EdgeInsets.only(left: 0, right: 10),
                                shape: Border.all(
                                    width: 0, color: Colors.transparent),
                                iconColor: Colors.black,
                                title: const Text('Request for lesson',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black)),
                                trailing: !_isOpen
                                    ? const FaIcon(
                                        FontAwesomeIcons.chevronRight,
                                        size: 15)
                                    : const FaIcon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 15,
                                      ),
                                children: <Widget>[
                                  ListTile(title: Text(widget.request)),
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(() => _isOpen = expanded);
                                },
                              )
                            : const Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text("No request for lesson")),
                        const Divider(
                          height: 2,
                          thickness: 1,
                          color: Colors.black,
                        ),
                        widget.review.isNotEmpty
                            ? ExpansionTile(
                                tilePadding:
                                    const EdgeInsets.only(left: 0, right: 10),
                                shape: Border.all(
                                    width: 0, color: Colors.transparent),
                                iconColor: Colors.black,
                                title: const Text('Review from tutor',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black)),
                                trailing: !_isOpen
                                    ? const FaIcon(
                                        FontAwesomeIcons.chevronRight,
                                        size: 15)
                                    : const FaIcon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 15,
                                      ),
                                children: <Widget>[
                                  ListTile(title: Text(widget.review)),
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(() => _isOpen = expanded);
                                },
                              )
                            : const Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text("Tutor haven't reviewed yet")),
                        const Divider(
                          height: 2,
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text("Add a rating")),
                            TextButton(
                                onPressed: () {}, child: const Text("Report"))
                          ],
                        )
                      ],
                    )))
          ]),
        ));
  }
}
