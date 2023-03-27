import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_user/ui/screens/main_pages/budget_pages/widgets/budget_heading.dart';
import 'package:restaurant_user/ui/screens/main_pages/cart_pages/widgets/cart_counter.dart';
import 'package:restaurant_user/ui/screens/main_pages/home_page/home_screen.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Plan Your Meal",
          style: TextStyle(
              color: Color.fromARGB(255, 14, 6, 6),
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BudgetHeading(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 25,
                        width: 25,
                        color: Colors.black.withOpacity(.2),
                        child: const Icon(
                          Icons.remove,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 25,
                        width: 25,
                        color: Colors.black.withOpacity(.2),
                        child: const Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Select your Cousine/Category",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              children: [
                CategoryButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
