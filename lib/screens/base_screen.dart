// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:digital_wallet/screens/home_screen.dart';
import 'package:digital_wallet/screens/settings_screen.dart';
import 'package:digital_wallet/screens/users_screen.dart';
import 'package:digital_wallet/utilities/my_button.dart';
import 'package:digital_wallet/utilities/my_card.dart';
import 'package:digital_wallet/utilities/my_dicover_card.dart';
import 'package:digital_wallet/utilities/my_row.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  //pageController
  //final _controller = PageController();
  // final PageController _pageController =
  //     PageController(viewportFraction: 0.8, initialPage: 0);
  // double _page = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SettingsScreen(),
    UsersScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const[
          BottomNavigationBarItem(icon: Icon(IconData(0xe318, fontFamily: 'MaterialIcons')), label: "Home"),
          BottomNavigationBarItem(icon: Icon(IconData(0xe043, fontFamily: 'MaterialIcons')), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(IconData(0xe57f, fontFamily: 'MaterialIcons')), label: "Settings")
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}