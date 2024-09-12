import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundColor: Colors.orange,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ))),
        CircleAvatar(
            backgroundColor: Colors.orange,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )))
      ],
    );
  }
}
