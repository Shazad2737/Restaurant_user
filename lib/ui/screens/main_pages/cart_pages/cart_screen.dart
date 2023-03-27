import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_user/ui/screens/main_pages/cart_pages/widgets/cart_heading.dart';
import 'package:restaurant_user/ui/screens/main_pages/cart_pages/widgets/cart_list.dart';
import 'package:restaurant_user/ui/widget/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Food Cart",
            style: TextStyle(
                color: Color.fromARGB(255, 14, 6, 6),
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              CartHeading(),
              CartList(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: CustomButton(
                  label: "Order",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
