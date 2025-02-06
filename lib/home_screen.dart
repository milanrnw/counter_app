import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            tooltip: 'Home Screen',
            activeIcon: Icon(Icons.home),
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            tooltip: 'Profile Screen',
            activeIcon: Icon(Icons.account_circle),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              tooltip: 'Saved Favourites',
              activeIcon: Icon(Icons.favorite),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            tooltip: 'All Settings',
            activeIcon: Icon(Icons.settings),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (int navdata) {
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
      body: const Center(
        child: Text(
          "Welcome Mike!",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
