// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_user/ui/screens/login_pages/signin_screen.dart';
import '../../widget/custom_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      body: Stack(
        children: [
          Image.network(
            //"https://i.pinimg.com/564x/54/0c/a4/540ca4e02b14621b94dea36d5fec4132.jpg",
            //"https://i.pinimg.com/564x/90/ce/02/90ce0267c41a33b4abb5b0d30575e542.jpg",
            "https://i.pinimg.com/564x/db/5d/de/db5ddee91eaa1a8f0f2dabafe6414bd3.jpg",
            //"https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1200&format=pjpg&exif=1&iptc=1",
            height: MediaQuery.of(context).size.height / 3.5,
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
                          height: 100,
                        ),
                      ),
                      Text(
                        "Getting Started",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Create account to continue",
                          style: TextStyle(
                              color: Color(0xff18786D),
                              fontSize: 15,
                              fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.drive_file_rename_outline_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,
                                size: 20, color: Colors.black),
                            hintText: 'Email'),
                      ),
                      SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline,
                                size: 20, color: Colors.black),
                            suffixIcon: Icon(Icons.visibility_off_outlined,
                                size: 20, color: Colors.black),
                            hintText: 'Confirm Password'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        label: "Sign Up",
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
                              "Already have an account?",
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
                                    builder: (context) => SigninScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
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
