import 'package:coffee_shop/view/home/widgets/coffee_type_selector.dart';
import 'package:coffee_shop/view/home/widgets/item.dart';
import 'package:coffee_shop/view/home/widgets/location_row.dart';
import 'package:coffee_shop/view/home/widgets/promo.dart';
import 'package:coffee_shop/view/home/widgets/searcher.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Stack(
        children: [
          Background(),
          Foreground(),
        ],
      ),
    );
  }
}

class Foreground extends StatefulWidget {
  const Foreground({super.key});

  @override
  State<Foreground> createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            LocationRow(),
            SizedBox(height: 20),
            Searcher(),
            Promo(),
            Types(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item(
                  itemName: 'Cappucino',
                  itemPictureName: 'cappucino1',
                  itemInfo: 'with Chocolate',
                  itemPrice: '4.53',
                  itemStars: 4.8,
                ),
                Item(
                  itemName: 'Cappucino',
                  itemPictureName: 'cappucino2',
                  itemInfo: 'with Oat Milk',
                  itemPrice: '3.90',
                  itemStars: 4.9,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item(
                  itemName: 'Cappucino',
                  itemPictureName: 'cappucino3',
                  itemInfo: 'with Chocolate',
                  itemPrice: '4.53',
                  itemStars: 4.5,
                ),
                Item(
                  itemName: 'Cappucino',
                  itemPictureName: 'cappucino4',
                  itemInfo: 'with Oat Milk',
                  itemPrice: '3.90',
                  itemStars: 4.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 19, 19, 19),
                Color.fromARGB(255, 49, 49, 49),
              ],
            ),
          ),
          height: 280,
        ),
      ],
    );
  }
}
