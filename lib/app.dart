import 'package:flutter/material.dart';
import 'package:task_maneg_ment/ui/screen/splash_screent.dart';
import 'package:task_maneg_ment/ui/utils/app_color.dart';

class TaskManegMent extends StatelessWidget {
  const TaskManegMent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        elevatedButtonTheme: elevatedButtonThemeData(),
      ),

      home: SplashScreent(),
    );
  }
  ElevatedButtonThemeData elevatedButtonThemeData(){
    return ElevatedButtonThemeData(
      style:  ElevatedButton.styleFrom(
        backgroundColor: AppColors.themColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: _outlineInputBorder(),
      errorBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
