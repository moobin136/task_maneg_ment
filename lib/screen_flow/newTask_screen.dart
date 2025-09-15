import 'package:flutter/material.dart';

class NewtaskScreen extends StatefulWidget {
  const NewtaskScreen({super.key});

  @override
  State<NewtaskScreen> createState() => _NewtaskScreenState();
}

class _NewtaskScreenState extends State<NewtaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column()),
      body: Center(child: Text('NewTask Screen')),
    );
  }
}
