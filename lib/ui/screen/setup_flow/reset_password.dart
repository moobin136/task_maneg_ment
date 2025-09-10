import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/login_screen.dart';

import 'package:task_maneg_ment/ui/widget/screent_background.dart';

import 'forgot_password_email_send.dart';

class ResetPasswrodScreen extends StatefulWidget {
  const ResetPasswrodScreen({super.key});

  @override
  State<ResetPasswrodScreen> createState() => _ResetPasswrodScreenState();
}

class _ResetPasswrodScreenState extends State<ResetPasswrodScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreentBacground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                onPressed: oneTabConfromButton,
                child: Text('Confrom'),
              ),
              const SizedBox(height: 30),
              biuldForgotAndSinupButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// ===================> loginButton
  void oneTabConfromButton() {
    // TODO implement
  }

  ///====================>>>>>>>>> forgot password
  void onTabForggotPassword() {
    // TODO implement
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmailSendCode()),
    );
  }

  /// ========================>>>>>>> sin Button
  void onTabSingUpButton() {
    // TODO implement
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  Widget biuldForgotAndSinupButton() {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              text: "Have account?  ",
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTabSingUpButton,
                  text: 'Sing in',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFrom() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'New Password',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Confrom Password',
            helperStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
