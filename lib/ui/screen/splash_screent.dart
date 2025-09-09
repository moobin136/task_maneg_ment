import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_maneg_ment/ui/utils/assets_path.dart';

import '../widget/screent_background.dart';
import 'setup_flow/login_screen.dart';

class SplashScreent extends StatefulWidget {
  const SplashScreent({super.key});

  @override
  State<SplashScreent> createState() => _SplashScreentState();
}

class _SplashScreentState extends State<SplashScreent> {
  @override
  void initState() {
    super.initState();
    _nextScreen();
  }

  Future<void> _nextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screent_bacground(
        child: Center(child: SvgPicture.asset(AssetsPath.logo, width: 120)),
      ),
    );
  }
}
