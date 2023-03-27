import 'package:flutter/material.dart';
import 'package:restaurant_user/ui/screens/main_pages/home_page/home_screen.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Favourites",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: FoodList(),
    );
  }
}
