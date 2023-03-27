// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../widget/custom_button.dart';

class ForgotpasswordScreen extends StatelessWidget {
  const ForgotpasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      body: Stack(
        children: [
          Image.network(
            "https://media.istockphoto.com/id/1179137591/photo/homemade-pancakes.jpg?b=1&s=170667a&w=0&k=20&c=y-zAhwXV-SpX1pmOOKxsmOgbeym7_2hY_GH_vWOfiiU=",
            height: MediaQuery.of(context).size.height / 3,
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
                          height: 130,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Forgot ",
                        style: TextStyle(
                          color: Color(0xff006758),
                          fontSize: 41,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Password",
                          style: TextStyle(
                              color: Color(0xff18786D),
                              fontSize: 41,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 40,
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
