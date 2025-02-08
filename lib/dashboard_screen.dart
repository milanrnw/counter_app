import 'package:counter_app/screens/favourite_screen.dart';
import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/profile_screen.dart';
import 'package:counter_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> body = const [
    HomeScreen(),
    ProfileScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.cyan,
        elevation: 8,

        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[500],

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
            tooltip: 'Home Screen',
            activeIcon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 217, 0, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            tooltip: 'Profile Screen',
            activeIcon: Icon(Icons.account_circle),
            backgroundColor: Color.fromARGB(255, 255, 230, 0),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              tooltip: 'Saved Favourites',
              activeIcon: Icon(Icons.favorite),
              backgroundColor: Color.fromARGB(255, 255, 17, 0)),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            tooltip: 'All Settings',
            activeIcon: Icon(Icons.settings),
            backgroundColor: Color.fromARGB(255, 0, 140, 255),
          ),
        ],
        onTap: (navdata) {
          _selectedIndex = navdata;
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Center(
            child: Text(
          "My Counter App",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.purple,
      ),
      body: body[_selectedIndex],// body of selected index
    );
  }
}
