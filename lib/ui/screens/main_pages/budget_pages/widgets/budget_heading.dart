import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BudgetHeading extends StatelessWidget {
  const BudgetHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Number of Admits",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ],
    );
  }
}
