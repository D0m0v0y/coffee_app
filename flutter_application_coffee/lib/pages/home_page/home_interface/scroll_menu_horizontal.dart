import 'package:flutter/material.dart';
//import 'package:flutter_application_coffee/pages/home_page/home_page.dart';

class ScrollMenuHorizontal extends StatefulWidget {
  const ScrollMenuHorizontal({super.key});

  @override
  State<ScrollMenuHorizontal> createState() => _ScrollMenuHorizontalState();
}
class _ScrollMenuHorizontalState extends State<ScrollMenuHorizontal>{

  final List<Map<String, dynamic>> coffeeType = [
    {"type": "Espresso", "isSelected": true},
    {"type": "Latte", "isSelected": false},
    {"type": "Cappuccino", "isSelected": false},
    {"type": "Americano", "isSelected": false},
    {"type": "Mocha", "isSelected": false},
  ];

  void _coffeeSelectedType(int selectedIndex){
    setState(() {
      for(var element in coffeeType){
        element['isSelected'] = false;
      }
      coffeeType[selectedIndex]['isSelected'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffeeType.length,
        itemBuilder: (context, index){
        return CoffeeType(
          coffeeType: coffeeType[index]['type'],
          isSelected: coffeeType[index]['isSelected'],
          onTap: () => _coffeeSelectedType(index)
        );
      })
    );
  }
}

class CoffeeType extends StatelessWidget{
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap; 

  const CoffeeType({super.key, required this.coffeeType, required this.isSelected, required this.onTap});
  
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(left: 18),
        child: Center(
          child: Text(
            coffeeType,
            style: TextStyle(
            color: isSelected ? Color.fromARGB(255, 198, 124, 78) : Colors.grey, 
            fontSize: 18, 
            fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}