import 'package:flutter/material.dart';

class Searcher extends StatelessWidget {
  const Searcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: SearchAnchor(
        builder: (context, controller) {
          return SearchBar(
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            padding: const MaterialStatePropertyAll(
                EdgeInsets.only(left: 12, right: 5)),
            leading:
                const Icon(Icons.search_rounded, size: 30, color: Colors.white),
            shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            )),
            backgroundColor: const MaterialStatePropertyAll(Color(0xff313131)),
            trailing: [
              IconButton.filled(
                iconSize: 32,
                onPressed: () {},
                icon: const Icon(Icons.tune_rounded),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xffC67C4E)),
                  iconColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
        suggestionsBuilder: (context, controller) {
          return List<ListTile>.generate(5, (int index) {
            final String item = 'item $index';
            return ListTile(
              title: Text(item),
              onTap: () {
                controller.closeView(item);
              },
            );
          });
        },
      ),
    );
  }
}
