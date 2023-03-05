import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/schedule_page/component/dialog_add_request.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ScheduleItem extends StatefulWidget {
  const ScheduleItem({super.key});

  @override
  State<StatefulWidget> createState() => _ScheduleItemState();
}

class _ScheduleItemState extends State<ScheduleItem> {
  bool _isOpen = false;

  final DateTime _startTime = DateTime.now();
  final DateTime _endTime = DateTime.now();
  final int _numberLesson = 1;

  String _request = "";

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
            Text.rich(TextSpan(
                text: _numberLesson.toString(),
                children: const [TextSpan(text: " lesson")])),
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
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                  style: const TextStyle(fontSize: 15),
                                  TextSpan(
                                      text: DateFormat("HH:mm")
                                          .format(_startTime),
                                      children: [
                                        TextSpan(text: " - ", children: [
                                          TextSpan(
                                              text: DateFormat("HH:mm")
                                                  .format(_endTime))
                                        ])
                                      ])),
                              OutlinedButton(
                                  style: const ButtonStyle(
                                      iconColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.red),
                                      side:
                                          MaterialStatePropertyAll<BorderSide>(
                                              BorderSide(color: Colors.red))),
                                  onPressed: () {},
                                  child: Row(children: const [
                                    FaIcon(
                                        FontAwesomeIcons.solidRectangleXmark),
                                    SizedBox(width: 10),
                                    Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ]))
                            ]),
                        ExpansionTile(
                          tilePadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          title: const Text(
                            'Request for lesson',
                            style: TextStyle(fontSize: 13),
                          ),
                          leading: !_isOpen
                              ? const Icon(Icons.keyboard_arrow_right_rounded)
                              : const Icon(Icons.keyboard_arrow_down_rounded),
                          trailing: TextButton(
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      DialogAddRequest(saveNote: (String temp) {
                                        setState(() {
                                          _request = temp;
                                        });
                                      })),
                              child: const Text("Edit")),
                          children: <Widget>[
                            ListTile(title: Text(_request)),
                          ],
                          onExpansionChanged: (bool expanded) {
                            setState(() => _isOpen = expanded);
                          },
                        ),
                      ],
                    )))
          ]),
        ));
  }
}
