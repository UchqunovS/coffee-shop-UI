import 'package:coffee_shop/view/details/details_view.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String itemName;
  final String itemPictureName;

  final String itemInfo;
  final String itemPrice;
  final double itemStars;

  const Item({
    super.key,
    required this.itemPictureName,
    required this.itemName,
    required this.itemInfo,
    required this.itemPrice,
    required this.itemStars,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DetailsView(),
      )),
      child: Container(
        padding: const EdgeInsets.only(bottom: 10.0),
        width: 139,
        height: 239,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/$itemPictureName.png',
                    fit: BoxFit.cover),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.transparent.withAlpha(200))
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(20),
                      )),
                  child: TextButton.icon(
                      onPressed: null,
                      style: const ButtonStyle(
                          iconColor: MaterialStatePropertyAll(
                            Color(0xffFBBE21),
                          ),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          textStyle: MaterialStatePropertyAll(
                              TextStyle(fontSize: 10))),
                      icon: const Icon(Icons.star),
                      label: Text('$itemStars')),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff2F2D2C)),
                ),
                Text(
                  itemInfo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff9B9B9B)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$itemPrice',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff2F4B4E)),
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffC67C4E)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
