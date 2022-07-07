import 'package:fitness_app_ui/screens/home_screen.dart';
import 'package:fitness_app_ui/screens/profile_screen.dart';
import 'package:fitness_app_ui/screens/reminder_screen.dart';
import 'package:fitness_app_ui/screens/workout_screen.dart';
import 'package:fitness_app_ui/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screenList = const [
    HomeScreen(),
    WorkoutScreen(),
    ReminderScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(colorOrange),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.grid_outline,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.barbell_outline,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.alarm_outline,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.person_outline,
            ),
            label: 'Dashboard',
          ),
        ],
      ),
    );
  }
}
