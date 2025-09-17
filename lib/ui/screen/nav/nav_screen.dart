import 'package:flutter/material.dart';
import 'package:task_maneg_ment/screen_flow/canceled_screen.dart';
import 'package:task_maneg_ment/screen_flow/completed_screen.dart';
import 'package:task_maneg_ment/screen_flow/newTask_screen.dart';
import 'package:task_maneg_ment/screen_flow/progress_screen.dart';
import 'package:task_maneg_ment/ui/utils/app_color.dart';

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
      print(' ===========================>>>>$index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // ← back button না থাকবে
        titleSpacing: 20, // ← leading থেকে gap দেবে
        backgroundColor: AppColors.themColor,
        title: Row(
          children: [
            CircleAvatar(maxRadius: 25, backgroundColor: Colors.black),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Md Mozahedu Islam'),
                SizedBox(height: 2),
                Text('Moobin'),
              ],
            ),
          ],
        ),
      ),

      body: screenList[_seltdIndex],
      // bottomSheet: ,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _seltdIndex,
        onDestinationSelected: _chnagScreen,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.production_quantity_limits),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper_outlined),
            label: 'Task',
          ),
          NavigationDestination(
            icon: Icon(Icons.file_download_done),
            label: 'Completd',
          ),
        ],
      ),
    );
  }
}
