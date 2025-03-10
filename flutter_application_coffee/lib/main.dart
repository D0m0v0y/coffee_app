import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/pages/home_page/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark
      )
      //theme:ThemeData.dark().copyWith(
        //scaffoldBackgroundColor: Colors.grey[900],
      //),     
    );
  }
}