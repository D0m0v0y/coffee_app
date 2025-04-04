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
    return Container(
      margin: const EdgeInsets.all(8), // Внешние отступы
      constraints: const BoxConstraints(
        minWidth: 160, // Минимальная ширина
        maxWidth: 200, // Максимальная ширина
        minHeight: 220, // Минимальная высота
      ),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Контейнер для изображения с фиксированными пропорциями
              AspectRatio(
                aspectRatio: 1, // Квадратное изображение
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: foto,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => 
                      const Icon(Icons.coffee, size: 50),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                nameCoffee,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                secondName,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const Spacer(),
              Text(
                '\$$price',
                style: GoogleFonts.sora(
                  fontSize: 20,
                  color: Color.fromARGB(255, 198, 124, 78),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}