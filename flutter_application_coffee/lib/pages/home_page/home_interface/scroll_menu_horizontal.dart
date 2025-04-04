import 'package:flutter/material.dart';
import 'different_coffee_menu.dart';

class ScrollMenuHorizontal extends StatefulWidget {
  const ScrollMenuHorizontal({super.key});

  @override
  State<ScrollMenuHorizontal> createState() => _ScrollMenuHorizontalState();
}

class _ScrollMenuHorizontalState extends State<ScrollMenuHorizontal> {
  final List<Map<String, dynamic>> coffeeType = [
    {"type": "Espresso", "isSelected": true},
    {"type": "Latte", "isSelected": false},
    {"type": "Cappuccino", "isSelected": false},
    {"type": "Americano", "isSelected": false},
    {"type": "Flat white", "isSelected": false},
  ];

  int selectedIndex = 0;

  void _coffeeSelectedType(int index) {
    setState(() {
      for (var element in coffeeType) {
        element['isSelected'] = false;
      }
      coffeeType[index]['isSelected'] = true;
      selectedIndex = index;
    });
  }

  Widget _getMenuCoffee(int index) {
    String coffeeName = coffeeType[index]['type'];
    List<String> images = coffeeImages[coffeeName]!;

return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(), // Отключаем скролл, если он есть в родительском виджете
    padding: const EdgeInsets.all(16),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // 2 элемента в строке
      childAspectRatio: 0.8, // Соотношение сторон (настройте под ваш дизайн)
      crossAxisSpacing: 10, // Горизонтальный отступ
      mainAxisSpacing: 20,
      mainAxisExtent: 300 
    ),
    itemCount: images.length,
    itemBuilder: (context, fotoIndex) {
      return DifferentCoffeeMenu(
        foto: AssetImage(images[fotoIndex]),
        nameCoffee: coffeeName,
        price: _getPrice(coffeeName),
        secondName: _getDescription(coffeeName),
      );
    },
  );
}

  int _getPrice(String coffeeName) {
    switch (coffeeName) {
      case "Espresso":
        return 2;
      case "Latte":
        return 4;
      case "Cappuccino":
        return 3;
      case "Americano":
        return 2;
      case "Flat white":
        return 5;
      default:
        return 0;
    }
  }

  String _getDescription(String coffeeName) {
    switch (coffeeName) {
      case "Espresso":
        return "100% arabica";
      case "Latte":
        return "With Oat Milk";
      case "Cappuccino":
        return "With Oat Milk";
      case "Americano":
        return "100% arabica";
      case "Flat white":
        return "With Oat Milk";
      default:
        return "";
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
            itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index]['type'],
                isSelected: coffeeType[index]['isSelected'],
                onTap: () => _coffeeSelectedType(index),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: _getMenuCoffee(selectedIndex),
          ),
        ),
      ],
    );
  }
}

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeType({super.key, required this.coffeeType, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
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
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

final Map<String, List<String>> coffeeImages = {
  'Espresso': [
    '',
    '',
    ''
  ],
  'Latte': [
    '',
    '',
    ''
  ],
  'Cappuccino': [
    '',
    '',
    ''
  ],
  'Americano': [
    '',
    '',
    ''
  ],
  'Flat white': [
    'lib/assets/image/Flatwhite1.jpg',
    'lib/assets/image/medium.jpeg',
    'lib/assets/image/Flatwhite2.jpeg'
  ]
};