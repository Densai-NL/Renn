import 'package:flutter/material.dart';
import 'package:renn_mobile/features/groups/views/group_view.dart';
import 'package:renn_mobile/features/live_activity/views/live_activity_view.dart';
import 'package:renn_mobile/features/profile/views/profile_view.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 1;
  final List<(Widget, String)> _pages = [
    (GroupView(), "Meetups"),
    (LiveActivityView(), ""),
    (ProfileView(), "Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 1
          ? null
          : AppBar(title: Text(_pages.elementAt(_selectedIndex).$2)),
      body: _pages.elementAt(_selectedIndex).$1,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Groups'),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.amber[800],
        // unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
