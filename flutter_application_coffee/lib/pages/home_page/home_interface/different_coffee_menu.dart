import 'package:flutter/material.dart';

class EspressoMenu extends StatelessWidget {
  const EspressoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10
      ),
      itemCount: 2,
      itemBuilder: (context, index){
        return Card(child: 
         SizedBox( 
          height: 370,
          width: 170,
          child: Stack(
            children: [
              ColoredBox(color: Colors.white),
              const Positioned(
              bottom: 10,
              left: 10,
              child: Text('1')),
            ],
          )
         )
        );
      }
    );
  }
}