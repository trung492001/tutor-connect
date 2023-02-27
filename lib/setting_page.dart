import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(255, 255, 255, 0)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1.2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              )
                            ],
                            color: Colors.white),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: const [
                                    FaIcon(FontAwesomeIcons.user),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9),
                                        child: Text('View Feedbacks'))
                                  ]),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ])))),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(255, 255, 255, 0)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1.2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              )
                            ],
                            color: Colors.white),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: const [
                                    FaIcon(FontAwesomeIcons.listUl),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9),
                                        child: Text('Booking History'))
                                  ]),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ])))),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(255, 255, 255, 0)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1.2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              )
                            ],
                            color: Colors.white),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: const [
                                    FaIcon(FontAwesomeIcons.clockRotateLeft),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9),
                                        child: Text('Session History'))
                                  ]),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ])))),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(255, 255, 255, 0)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1.2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              )
                            ],
                            color: Colors.white),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: const [
                                    FaIcon(FontAwesomeIcons.gear),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9),
                                        child: Text('Advanced Settings'))
                                  ]),
                                  const FaIcon(FontAwesomeIcons.angleRight)
                                ])))),
              ]),
              Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FilledButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(41, 121, 255, 1)),
                        minimumSize:
                            MaterialStatePropertyAll(Size.fromHeight(50))),
                    child: const Text('Log out'),
                    onPressed: () {},
                  )),
            ]));
  }
}
