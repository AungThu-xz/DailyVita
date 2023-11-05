import 'package:flutter/material.dart';

class SelectGridItem extends StatelessWidget {
  const SelectGridItem({super.key, required this.label, required this.index});

  final String label;
  final List<int> index;

  @override
  Widget build(BuildContext context) {
    List<int> selectedindex = [];
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   selectedindex.add(index);
        // });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          color: selectedindex.contains(index)
              ? Colors.blueGrey.shade800
              : Colors.greenAccent.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
        child: Text(
          "item $index",
          style: TextStyle(
              color: selectedindex.contains(index)
                  ? Colors.white
                  : Colors.blueGrey.shade800),
        ),
      ),
    );
  }
}
