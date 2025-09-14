import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/registion_screen.dart';

import 'package:task_maneg_ment/ui/widget/screent_background.dart';

import '../nav/nav_screen.dart';

import 'forgot_password_email_send.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                onPressed: oneTabLoginButton,
                child: Icon(Icons.arrow_forward_ios, size: 26),
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
  void oneTabLoginButton() {
    // TODO implement
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NavScreen()),
    );
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
      MaterialPageRoute(builder: (context) => RegistionScreen()),
    );
  }

  Widget biuldForgotAndSinupButton() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: onTabForggotPassword,
            child: Text('Forgot Password'),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              text: "Don't have and account?  ",
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTabSingUpButton,
                  text: 'Sing Up',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
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
        ),
      ],
    );
  }
}
