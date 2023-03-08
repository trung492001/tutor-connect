import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_bar.dart';
import 'package:flutter_application_1/src/screen/course_page/course_page.dart';
import 'package:flutter_application_1/src/screen/history_page/history_page.dart';
import 'package:flutter_application_1/src/screen/home_page/home_page.dart';
import 'package:flutter_application_1/src/screen/login_page/login_page.dart';
import 'package:flutter_application_1/src/screen/schedule_page/schedule_page.dart';
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
      'History',
      style: optionStyle,
    ),
    Text(
      'Course',
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

  Widget generatePage(int index) {
    switch (index) {
      case 0:
        {
          return HomePage(setNavBarIndex: _onItemTapped);
        }
      case 1:
        {
          return const SchedulePage();
        }
      case 2:
        {
          return const HistoryPage();
        }
      case 3:
        {
          return const CoursePage();
        }
      default:
        {
          return const SizedBox.shrink();
        }
    }
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
      body: Container(child: generatePage(_selectedIndex)),
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
              icon: FaIcon(FontAwesomeIcons.clockRotateLeft), label: 'History'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.graduationCap), label: 'Course'),
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
