import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 20),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Hi Joey",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Find your food",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(.5),
                        size: 30,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 15,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                children: [
                  CategoryButton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: const Text(
                "Food Menu",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1 / 1.1,
                children: List.generate(
                  10,
                  (index) => Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFF6E0D5),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1922&q=80",
                                    fit: BoxFit.cover,
                                    height: 132,
                                    width: 132,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Burger",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "15 min",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Icon(
                                        Icons.stars_rounded,
                                        color: Color.fromARGB(217, 28, 139, 0),
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color:
                                                Colors.black.withOpacity(.5)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.favorite_outline_outlined)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(10),
          child: Icon(
            Icons.food_bank_outlined,
            size: 50,
          ),
        ),
        Text("Burger")
      ],
    );
  }
}
