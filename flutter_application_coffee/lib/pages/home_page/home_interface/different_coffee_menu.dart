import 'package:flutter/material.dart';

class DifferentCoffeeMenu extends StatelessWidget {
  final ImageProvider foto;
  final String nameCoffee;
  final String secondName;
  final int price;

  const DifferentCoffeeMenu({
    super.key, 
    required this.foto, 
    required this.nameCoffee, 
    required this.secondName,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6
      ),
      itemCount: 2,
      itemBuilder: (context, index){
        return Card(
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: 100,
              child: Image(image: foto)
              )
            ],
          )
        );
      }
    );
  }
}