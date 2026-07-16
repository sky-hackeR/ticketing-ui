import 'package:flutter/material.dart';
import 'package:reserver/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const HomeScreen(),
    Center(child: const Text("Search")),
    Center(child: const Text("Tickets")),
    Center(child: const Text("Profile")),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.teal,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined),
              activeIcon: Icon(Icons.airplane_ticket),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Home'
          ),

        ]
      ),
    );
  }
}
