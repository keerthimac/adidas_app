import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.icons,
  });

  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          icons.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500),
                  color: index == 0
                      ? Colors.orange
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                icons[index],
                color: index == 0
                    ? Colors.white
                    : Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
