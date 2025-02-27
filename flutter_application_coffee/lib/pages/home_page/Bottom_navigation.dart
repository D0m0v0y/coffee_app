import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {

  int currentIndex = 0;
  final Function(int) onTap;

  BottomNav({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.transparent,
            selectedItemColor: const Color.fromARGB(255, 198, 124, 78),
            unselectedItemColor: Colors.white.withAlpha((0.5 * 255).round()),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8), 
                  child: Icon(Icons.home),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(Icons.favorite),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(Icons.notifications),
                ),
                label: '',
              ),
            ],
    );
  }
}
