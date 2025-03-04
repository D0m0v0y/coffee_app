import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: foto),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    nameCoffee,
                    style: GoogleFonts.sora(
                      fontSize: 17
                    ),
                  )
                )
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    secondName,
                    style: GoogleFonts.sora(
                      fontSize: 10
                    ),
                  )
                )
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '\$ $price',
                    style: GoogleFonts.sora(
                      fontSize: 20,
                      color: Color.fromARGB(255, 198, 124, 78)
                    ),
                  )
                )
              ),
            ],
          )
        );
      }
    );
  }
}