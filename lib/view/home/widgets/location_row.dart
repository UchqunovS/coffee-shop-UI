import 'package:flutter/material.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: ListTile(
        title: const Text(
          'Location',
          style: TextStyle(
            color: Color(0xFFB7B7B7),
          ),
        ),
        subtitle: PopupMenuButton(
          child: const Row(
            children: [
              Text(
                'Tashkent, Uzbekistan',
                style: TextStyle(
                  color: Color(0xFFDDDDDD),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('Tashkent, Uzbekistan')),
            ];
          },
        ),
        trailing: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.hardEdge,
          child: Image.asset('assets/images/3147.png'),
        ),
      ),
    );
  }
}
