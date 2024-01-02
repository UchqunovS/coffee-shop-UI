import 'package:coffee_shop/widgets/bar_icon.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            'Detail',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: const [HeartButton()]),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Flexible(
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 30, top: 10),
                    title: Text('Price',
                        style: TextStyle(color: Color(0xff9B9B9B))),
                    subtitle: Text(
                      '\$4.53',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xffC67C4E)),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(217, 62)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffC67C4E)),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  width: 30,
                  height: 120,
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/cappucino1_rectangle.png',
              fit: BoxFit.cover,
            ),
            const ListTile(
              contentPadding: EdgeInsets.only(left: 0, top: 10),
              title: Text('Cappucino',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
              subtitle: Text(
                'with Chocolate',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star_rounded, color: Color(0xffFBBE21)),
                    Text(
                      '4.8',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    Text(
                      '(230)',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/icons/bean.png', scale: 0.8),
                    Image.asset('assets/icons/milk.png', scale: 0.8),
                  ],
                )
              ],
            ),
            const Divider(height: 30),
            const Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const Text(
                'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More'),
            const ListTile(
              contentPadding: EdgeInsets.only(left: 0),
              title: Text('Size',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              subtitle: Row(
                children: [
                  Sizes(size: 'S', isSelected: false),
                  Sizes(size: 'M', isSelected: true),
                  Sizes(size: 'L', isSelected: false),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Size Button
class Sizes extends StatelessWidget {
  final bool isSelected;
  final String size;
  const Sizes({
    super.key,
    required this.size,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.3),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xffFFF5EE) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: isSelected ? const Color(0xffC67C4E) : Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              size,
              style:
                  isSelected ? const TextStyle(color: Color(0xffC67C4E)) : null,
            )
          ],
        ),
      ),
    );
  }
}

//Statefull Heart button
class HeartButton extends StatefulWidget {
  const HeartButton({
    super.key,
  });

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      icon: const BarIcon(iconName: 'heart'),
      isSelected: true,
      selectedIcon: BarIcon(
        iconName: 'heart',
        isSelected: isSelected,
      ),
    );
  }
}
