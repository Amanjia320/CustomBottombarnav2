import 'package:flutter/material.dart';
import 'package:flutter_practice/components/favourites.dart';
import 'package:flutter_practice/components/home.dart';
import 'package:flutter_practice/components/items.dart';
import 'package:flutter_practice/components/profile.dart';
import 'package:flutter_practice/components/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<String> _titleList = [
    'Home',
    'Favourites',
    'Items',
    'Settings',
    'Profile',
  ];

  final List<Widget> _widgetList = [
    const Home(),
    const Favourites(),
    Items(),
    const Settings(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titleList[_currentIndex],
        ),
        backgroundColor: Colors.amber,
      ),
      body: _widgetList[_currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.amber,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0 ? Colors.blue : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.star,
                  color: _currentIndex == 1 ? Colors.blue : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.list,
                  color: _currentIndex == 2 ? Colors.blue : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.settings,
                  color: _currentIndex == 3 ? Colors.blue : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 4 ? Colors.blue : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
