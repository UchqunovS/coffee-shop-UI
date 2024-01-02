import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/coffee_in_the_table.png',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 10, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 1, 5, 0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(7)),
                  child: const Text(
                    'Promo',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        offset: Offset(-10, 10),
                        spreadRadius: -5,
                      ),
                    ]),
                    child: const Text(
                      'Buy one get   ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      offset: Offset(-10, 10),
                      spreadRadius: -5,
                    ),
                  ]),
                  child: const Text(
                    'one FREE   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
