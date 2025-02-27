import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20)
          ),
          filled: true,
          fillColor: Colors.black12,
          prefixIcon: Icon(Icons.search, 
          color: const Color.fromARGB(255, 198, 124, 78)
          ),
          hintText: 'Find your coffee..',
          
        ),
      ),
    );
  }
}