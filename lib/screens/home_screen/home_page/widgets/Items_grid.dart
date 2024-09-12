import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../models/sneaker_model.dart';

class ItemsGrid extends StatelessWidget {
  const ItemsGrid({
    super.key,
    required this.sneakers,
  });

  final List<SneakerModel> sneakers;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: sneakers.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(sneakers[index].image),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(
                        "LKR ${sneakers[index].price.toString()}0",
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 5,
                  child: Text(
                    sneakers[index].title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
