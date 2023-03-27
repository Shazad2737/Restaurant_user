import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:restaurant_user/ui/screens/main_pages/budget_pages/budget_screen.dart';
import 'package:restaurant_user/ui/screens/main_pages/cart_pages/cart_screen.dart';
import 'package:restaurant_user/ui/screens/main_pages/favourite_page/favourite_screen.dart';
import 'package:restaurant_user/ui/screens/main_pages/home_page/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController();

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    const BudgetScreen(),
    const FavouriteScreen(),
    const CartScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home_outlined),
      title: '',
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.black,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.calculate_outlined),
      title: '',
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.black,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.favorite_border),
      title: '',
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.black,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.card_travel_outlined),
      title: '',
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.black,
    ),
  ];
}
