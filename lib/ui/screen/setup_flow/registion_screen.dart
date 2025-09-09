import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/widget/screent_background.dart';

class RegistionScreen extends StatefulWidget {
  const RegistionScreen({super.key});

  @override
  State<RegistionScreen> createState() => _RegistionScreenState();
}

class _RegistionScreenState extends State<RegistionScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: screent_bacground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 200),
                Text(
                  'Get Started With',
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                buildFrom(),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: oneTabLoginButton,
                  child: Icon(Icons.arrow_forward_ios, size: 26),
                ),
                const SizedBox(height: 30),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
  void oneTabLoginButton() {
    // TODO implement
  }
  Widget buildFrom() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'First Name',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Last Name',
            helperStyle: TextStyle(color: Colors.grey),
          ),

        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Password',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Password',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

}





