import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/pages/home_page/app_bar.dart';
import 'package:flutter_application_coffee/pages/home_page/home_interface/home_interface.dart';
import 'bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeInterface(),
    Center(child: Text('Like')),
    Center(child: Text('Notifications')),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  const CustomAppBar(),
        body:  IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha((0.5 * 255).round()),
                blurRadius: 2,
                spreadRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child:  BottomNav(currentIndex: _currentIndex, onTap: _onTap)
        ),
      ),
    );
  }
}