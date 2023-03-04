import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_bar.dart';
import 'package:flutter_application_1/src/screen/home_page/home_page.dart';
import 'package:flutter_application_1/src/screen/login_page/login_page.dart';
import 'package:flutter_application_1/src/screen/schedule_page/schedule_page.dart';
import 'package:flutter_application_1/src/screen/setting_page/setting_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Schedule',
      style: optionStyle,
    ),
    Text(
      'Upcoming',
      style: optionStyle,
    ),
    Text(
      'Tutors',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: SafeArea(
          child: MyAppBar(title: _widgetOptions.elementAt(_selectedIndex)),
        ),
      ),
      body: Container(
          child: _selectedIndex == 0
              ? HomePage(
                  setNavBarIndex: _onItemTapped,
                )
              : _selectedIndex == 4
                  ? const SettingPage()
                  : _selectedIndex == 1
                      ? const SchedulePage()
                      : null),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendarDays),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.clock),
            label: 'Upcoming',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.users), label: 'Tutors'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.gear), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent.shade400,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(home: LoginPage()),
  );
}
