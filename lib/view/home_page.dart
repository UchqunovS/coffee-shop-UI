import 'package:coffee_shop/view/home/home_view.dart';
import 'package:coffee_shop/view/order/order_view.dart';
import 'package:coffee_shop/widgets/bar_icon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List views = const [
    HomeView(),
    Center(child: Text('Page3')),
    OrderView(),
    Center(child: Text('Page3')),
    Text('Page4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views.elementAtOrNull(selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: BarIcon(
                  iconName: 'home',
                  isSelected: 0 == selectedIndex,
                ),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: BarIcon(
                iconName: 'heart',
                isSelected: 1 == selectedIndex,
              ),
              label: 'heart',
            ),
            BottomNavigationBarItem(
              icon: BarIcon(
                iconName: 'bag',
                isSelected: 2 == selectedIndex,
              ),
              label: 'bag',
            ),
            BottomNavigationBarItem(
              icon: BarIcon(
                iconName: 'notification',
                isSelected: 3 == selectedIndex,
              ),
              label: 'notification',
            ),
          ],
        ),
      ),
    );
  }
}
