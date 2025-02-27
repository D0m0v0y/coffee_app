import 'package:flutter/material.dart';

class ScrollMenuHorizontal extends StatelessWidget {
  const ScrollMenuHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildItem('Cappuchino'),
          _buildItem('Espresso'),
          _buildItem('Latte'),
          _buildItem('Flet White'),
          _buildItem('Raf'),
        ],
      ),
    );
  }
}

Widget _buildItem(String text){
  return Container(
    //width: 120,
    margin: const EdgeInsets.only(left: 18),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}