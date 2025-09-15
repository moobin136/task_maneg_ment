import 'package:flutter/material.dart';
import 'package:task_maneg_ment/screen_flow/canceled_screen.dart';
import 'package:task_maneg_ment/screen_flow/completed_screen.dart';
import 'package:task_maneg_ment/screen_flow/newTask_screen.dart';
import 'package:task_maneg_ment/screen_flow/progress_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _seltdIndex = 0;
  final List<Widget> screenList = [
    const NewtaskScreen(),
    const CompletedScreen(),
    const CanceledScreen(),
    const ProgressScreen(),
  ];

  void _chnagScreen(int index) {
    setState(() {
      _seltdIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[_seltdIndex],
      // bottomSheet: ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _chnagScreen,

        currentIndex: _seltdIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        // landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 87, 87, 87),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.nest_cam_wired_stand_sharp),
            label: 'New Task',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Completd'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Canceld'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Progress'),
        ],
      ),
    );
  }
}
