import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/login_screen.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/recive_otp_screen.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/registion_screen.dart';
import 'package:task_maneg_ment/ui/utils/app_color.dart';
import 'package:task_maneg_ment/ui/widget/screent_background.dart';

import 'forggot_password_screent.dart';

class EmailSendCode extends StatefulWidget {
  const EmailSendCode({super.key});

  @override
  State<EmailSendCode> createState() => _EmailSendCodeState();
}

class _EmailSendCodeState extends State<EmailSendCode> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: screent_bacground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Text(
                'Your Email Address',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'A 6 Digit verification pin will send your email addresh',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  helperStyle: TextStyle(color: Colors.grey),
                ),
              ),
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpFild()));
  }

  ///====================>>>>>>>>> forgot password

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
              text: "Have account ",
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTabSingUpButton,
                  text: 'Sing in',
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
}
