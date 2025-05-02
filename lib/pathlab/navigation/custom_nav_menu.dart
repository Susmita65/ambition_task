import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap, // Calls the function when tapped
      selectedItemColor: Colors.amber, // Selected color
      unselectedItemColor: Colors.grey, // Unselected color

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.playlist_add_check_sharp),
          label: "Packages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.textsms_sharp),
          label: "Lab Test",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Services"),
      ],
    );
  }
}
