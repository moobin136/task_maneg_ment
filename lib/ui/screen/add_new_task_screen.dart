import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/widget/custom_appbar.dart';
import '../widget/screent_background.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreentBacground(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 42),
              Text(
                'Add New Task',
                style: TextTheme.of(
                  context,
                ).titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              TextFormField(decoration: InputDecoration(hintText: 'Subject')),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(hintText: 'Description'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _onTapGoLogin,
                child: Icon(Icons.arrow_forward_ios, size: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapGoLogin() {}
}
