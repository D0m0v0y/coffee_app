import 'package:flutter/material.dart';
import 'different_coffee_menu.dart';
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
    {"type": "Flat white", "isSelected": false},
  ];

  int selectedIndex = 0;

  void _coffeeSelectedType(int index){
    setState(() {
      for(var element in coffeeType){
        element['isSelected'] = false;
      }
      coffeeType[index]['isSelected'] = true;
      selectedIndex = index;
    });
  }

  Widget _getMenuCoffee(int index){
    switch(index){
      case 0:
        return DifferentCoffeeMenu(
          foto:
          AssetImage('lib/assets/image/espresso.jpg'), 
          nameCoffee: 'Espresso', 
          price: 2, 
          secondName: 'With Oat Milk',
          );
      case 1:
        return DifferentCoffeeMenu(
          foto:
          AssetImage('lib/assets/image/espresso.jpg'), 
          nameCoffee: 'Latte', 
          price: 4, 
          secondName: 'With Oat Milk',
        );
      case 2:
        return DifferentCoffeeMenu(
          foto:
          AssetImage('lib/assets/image/espresso.jpg'), 
          nameCoffee: 'Cappuccino', 
          price: 3, 
          secondName: 'With Oat Milk',
        );
      case 3:
        return DifferentCoffeeMenu(
          foto:
          AssetImage('lib/assets/image/espresso.jpg'), 
          nameCoffee: 'Americano', 
          price: 2, 
          secondName: 'With Oat Milk',
        );
      case 4:
        return DifferentCoffeeMenu(
          foto:
          AssetImage('lib/assets/image/espresso.jpg'), 
          nameCoffee: 'Flat white', 
          price: 5, 
          secondName: 'With Oat Milk',
        );
      default:
        return SizedBox(height: 10);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
        ),
        const SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: _getMenuCoffee(selectedIndex)
          )
        )
      ]
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