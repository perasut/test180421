import 'package:cabbittest/screens/bottomnav/booking_screen.dart';
import 'package:cabbittest/screens/bottomnav/home_screen.dart';
import 'package:cabbittest/screens/bottomnav/market_screen.dart';
import 'package:cabbittest/screens/bottomnav/setting_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  String _title = 'บริการ';

  final List<Widget> _children = [
    HomeScreen(),
    MarketScreen(),
    BooklingScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title1234'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal,
        buttonBackgroundColor: Colors.teal,
        height: 60,
        animationDuration: Duration(milliseconds: 200),
        index: 2,
        animationCurve: Curves.bounceInOut,
        items: [
          Icon(
            Icons.shopping_basket,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.library_books,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.business_center,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ],
        // onTap: onTabTapped,
      ),
    );
  }
}
