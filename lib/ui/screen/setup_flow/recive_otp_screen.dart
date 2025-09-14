import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/login_screen.dart';
import 'package:task_maneg_ment/ui/screen/setup_flow/reset_password.dart';
import 'package:task_maneg_ment/ui/widget/screent_background.dart';

class OtpFild extends StatefulWidget {
  const OtpFild({super.key});

  @override
  State<OtpFild> createState() => _OtpFildState();
}

class _OtpFildState extends State<OtpFild> {
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
                'PIN Verifiation',
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
              PinCodeTextField(
                backgroundColor: Colors.transparent,
                length: 6,
                obscureText: false,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedColor: Colors.green,
                  inactiveColor: Colors.grey,
                  
                ),

                appContext: context,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: oneTabVerifiButton,
                child: Text('Verify'),
              ),
              const SizedBox(height: 30),
              biuldForgotAndSinupButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// ===================> onTabVerifierButton
  void oneTabVerifiButton() {
    // TODO implement
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetPasswrodScreen()),
    );
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
