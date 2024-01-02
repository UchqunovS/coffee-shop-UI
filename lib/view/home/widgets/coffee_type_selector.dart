import 'package:flutter/material.dart';

class Types extends StatelessWidget {
  const Types({super.key});

  Container _typeOfCoffee({required String text, bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xffC67C4E) : null,
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.white : null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _typeOfCoffee(text: 'Cappuccino', isSelected: true),
          _typeOfCoffee(text: 'Machiato'),
          _typeOfCoffee(text: 'Latte'),
          _typeOfCoffee(text: 'Americano'),
        ],
      ),
    );
  }
}
