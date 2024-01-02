import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarIcon extends StatelessWidget {
  final String iconName;
  final bool isSelected;

  const BarIcon({
    super.key,
    required this.iconName,
    this.isSelected = false,
  });

  final Color selectedColor = const Color.fromARGB(255, 198, 124, 78);
  final Color unselectedColor = const Color.fromARGB(255, 141, 141, 141);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$iconName.svg',
      colorFilter: ColorFilter.mode(
        isSelected ? selectedColor : unselectedColor,
        BlendMode.srcIn,
      ),
    );
  }
}
