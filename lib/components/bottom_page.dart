import 'package:coffee/components/home_page.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  static const TextStyle optionStyle = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white
      );

  int _selectedIndex = 0;

  List<Widget> _widgetOption = [
    HomePage(),
    Text('Page 2', style: optionStyle),
    Text('Page 3', style: optionStyle),
    Text('Page 4', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Container(
          child: _widgetOption.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          unselectedItemColor: Color(0xff4e5053),
          selectedItemColor: Color(0xffd17842),
          currentIndex: _selectedIndex,
          elevation: 0,
          backgroundColor: Color(0xff0c0f14),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_rounded,
                  size: 30,
                ),
                label: 'Business'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                label: 'Notifications')
          ],
        ),
      ),
    );
  }
}
