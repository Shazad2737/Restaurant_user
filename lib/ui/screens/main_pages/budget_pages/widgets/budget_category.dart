import 'package:flutter/material.dart';

class CaregoryButton extends StatelessWidget {
  const CaregoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.6),
      child: Text(
        "Arabic",
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
