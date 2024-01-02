import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Order'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Deliver',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Pick Up',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                title: Text(
                  'Delivery Address',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Jl. Kpg Sutoyo',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                      style: TextStyle(color: Color(0xff808080)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/edit.svg'),
                      label: const Text('Edit Address'),
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xff303336)),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Color(0xffDEDEDE))))),
                  const SizedBox(width: 10),
                  TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/note.svg'),
                      label: const Text('Add Note'),
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xff303336)),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Color(0xffDEDEDE))))),
                ],
              ),
              const Divider(color: Color(0xffEAEAEA)),
              ListTile(
                leading: Image.asset('assets/images/cappucino1.png',
                    width: 54, height: 54),
                title: const Text(
                  'Cappucino',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                subtitle: const Text('with Chocolate',
                    style: TextStyle(color: Color(0xff9B9B9B), fontSize: 12)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton.outlined(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                    const IconButton(
                        onPressed: null,
                        icon: Text('1', style: TextStyle(fontSize: 16))),
                    IconButton.outlined(
                        onPressed: () {}, icon: const Icon(Icons.remove))
                  ],
                ),
              ),
              const Divider(color: Color(0xffF4F4F4), thickness: 4, height: 35),
              ListTile(
                onTap: () {},
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: Color(0xffEAEAEA))),
                leading: SvgPicture.asset(
                  'assets/icons/discount.svg',
                  width: 20,
                  height: 20,
                ),
                title: const Text('1 Discount is applied',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 20),
                minVerticalPadding: 20,
              ),
              const Text(
                'Payment Summary',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\$ 4.53',
                    style: TextStyle(
                        color: Color(0xff2F2D2C),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '\$ 2.0  ',
                        style: TextStyle(
                          color: Color(0xff2F2D2C),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        '\$ 1.0',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color(0xffEAEAEA),
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\$ 5.53',
                    style: TextStyle(
                        color: Color(0xff2F2D2C),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.white,
        onClosing: () {},
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: SvgPicture.asset('assets/icons/moneys.svg'),
                  title: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 24,
                          decoration: BoxDecoration(
                              color: const Color(0xffC67C4E),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            ' Cash  ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            ' \$ 5.53  ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/dots.svg'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xffC67C4E)),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.fromLTRB(160, 20, 160, 20),
                    ),
                  ),
                  child: const Text(
                    'Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
