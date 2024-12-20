import 'package:carinfo/bottom_screen/compare.dart';
import 'package:carinfo/bottom_screen/favourites.dart';
import 'package:carinfo/bottom_screen/home.dart';
import 'package:carinfo/bottom_screen/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _bottomScreens = [
    const Home(),
    const Compare(),
    const Favourites(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _bottomScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.compare_sharp), label: 'Compare'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF390050),
          unselectedItemColor: const Color.fromARGB(255, 156, 150, 150),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
