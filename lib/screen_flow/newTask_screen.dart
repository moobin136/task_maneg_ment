import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/widget/screent_background.dart';

import '../ui/screen/add_new_task_screen.dart';
import '../ui/widget/sumraiTaskCard.dart';

class NewtaskScreen extends StatefulWidget {
  const NewtaskScreen({super.key});

  @override
  State<NewtaskScreen> createState() => _NewtaskScreenState();
}

class _NewtaskScreenState extends State<NewtaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapFAB,
        child: Icon(Icons.add),
      ),
      body: ScreentBacground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSumariSectaion(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///hader text
                          Text('Titile text this is Titile'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSumariSectaion() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskCard(taskCounter: 09, label: 'New'),
            TaskCard(taskCounter: 09, label: 'Completed'),
            TaskCard(taskCounter: 09, label: 'Cancel'),
            TaskCard(taskCounter: 09, label: 'Progress'),
          ],
        ),
      ),
    );
  }

  void _onTapFAB() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewTaskScreen()),
    );
  }
}
