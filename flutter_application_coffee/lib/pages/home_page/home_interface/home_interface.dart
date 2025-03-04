import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/pages/home_page/home_interface/input_field.dart';
import 'package:flutter_application_coffee/pages/home_page/home_interface/scroll_menu_horizontal.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeInterface extends StatelessWidget {
  const HomeInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: 250,
              child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.sora(
                fontSize: 32
              )
            )
            ),
        ),
        SizedBox(height: 25),
        InputField(),  //поле для ввода
        SizedBox(height: 25),
        Expanded(
          child: 
            ScrollMenuHorizontal() //список напитков
        )
      ],
    );
  }
}