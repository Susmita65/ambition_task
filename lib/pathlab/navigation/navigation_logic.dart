import 'package:demo_of_provider/pathlab/navigation/custom_nav_menu.dart';
import 'package:demo_of_provider/pathlab/pages/home_page.dart';
import 'package:demo_of_provider/pathlab/pages/labtest/lab_test_page.dart';
import 'package:demo_of_provider/pathlab/pages/packages/package_page.dart';
import 'package:demo_of_provider/pathlab/pages/services/service_page.dart';
import 'package:flutter/material.dart';

class NavigationLogic extends StatefulWidget {
  const NavigationLogic({super.key});

  @override
  State<StatefulWidget> createState() => _NavigationLogicState();
}

class _NavigationLogicState extends State<NavigationLogic> {
  int _selectedIndex = 0;
  //List of  pages corresponding to each nav item
  late List<Widget> _pages;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      PathLabPage(), //yo chai by default home page ho hai
      PackagePage(),
      LabTestPage(),
      ServicePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex], // Display selected page
    );
  }
}
