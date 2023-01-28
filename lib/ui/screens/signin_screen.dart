// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_user/ui/screens/signup_screen.dart';
import '../widget/custom_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      body: Stack(
        children: [
          Image.network(
            "https://blog-images-1.pharmeasy.in/blog/production/wp-content/uploads/2022/05/12111806/17.jpg",
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: SizedBox(
                height: ((MediaQuery.of(context).size.height / 3) * 2) + 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Let's get something",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Good to see you back",
                        style: TextStyle(
                            color: Color(0xff18786D),
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.call_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          hintText: 'Phone Number',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline,
                              size: 20, color: Colors.black),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              size: 20, color: Colors.black),
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color(0xff006758),
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 60),
                      CustomButton(
                        label: "Sign In",
                        onPressed: () {},
                        color: Color(0xff006758),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Wrap(
                          children: [
                            Text(
                              "Don't have an account",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color(0xff006758),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
