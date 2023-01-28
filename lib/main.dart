import 'package:flutter/material.dart';
import 'package:restaurant_user/ui/screens/forgetpassword_screen.dart';
import 'package:restaurant_user/ui/screens/home_screen.dart';
import 'package:restaurant_user/ui/screens/signup_screen.dart';
import 'package:restaurant_user/ui/screens/signin_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            hintStyle: TextStyle(
                color: Colors.black.withOpacity(.3),
                fontWeight: FontWeight.bold),
            filled: true,
            fillColor: const Color(
              0xffCECECE,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        home: const HomeScreen());
  }
}
