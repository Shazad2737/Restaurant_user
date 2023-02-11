// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_user/ui/screens/signup_screen.dart';
import '../widget/custom_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff56B03F),
      body: Stack(children: [
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26, top: 10),
                        child: Text(
                          "Egg Salad",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Row(
                      children: [
                        Text(
                          "\$10.30",
                          style: TextStyle(
                              color: Color(0xff4CA434),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        Icon(Icons.stars_rounded,
                            color: Color.fromARGB(217, 28, 139, 0)),
                        Text(
                          " 4.5",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.schedule,
                            color: Color(0xffDCEE07),
                          ),
                        ),
                        Text(
                          " 20 min",
                          style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w900,
                              fontSize: 17),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.bloodtype,
                            color: Color(0xffF21616),
                            size: 20,
                          ),
                        ),
                        Text(
                          "120kcal",
                          style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w900,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Text(
                          "About Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              "Egg salad is a dish made primarily of chopped hard-boiled or scrambled eggs, mustard, and mayonnaise, often including other ingredients such as celery.",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 80,
                            ),
                            child: CustomButton(
                              label: "Add to Cart",
                              onPressed: () {},
                              color: Color(0xff53AB3B),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 7.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                height: 250,
                width: 250,
                color: Colors.amberAccent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                      "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZWdnJTIwc2FsYWR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
