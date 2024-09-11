import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:adidas_app/models/sneaker_model.dart';
import 'package:adidas_app/models/sneakers_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/action_bar.dart';
import 'widgets/custom_carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<IconData> icons = [
    Icons.shopping_basket_rounded,
    Icons.g_translate_rounded,
    Icons.zoom_in_map_rounded,
    Icons.dashboard,
    Icons.timer_sharp
  ];

  List<SneakerModel> sneakers = SneakersData.sneakers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActionBar(),
                const SizedBox(
                  height: 8,
                ),
                const CustomPoppinsText(
                  text: "Hello Darshana",
                  fontWeight: FontWeight.w500,
                ),
                CustomPoppinsText(
                  text: "Lets Start Shopping",
                  color: Colors.grey.shade500,
                  fontSize: 15,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomCarouselSlider(
                  list: SneakersData.images,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomPoppinsText(
                      text: "Top Catogories",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    const CustomPoppinsText(
                      text: "See All",
                      fontWeight: FontWeight.w500,
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
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
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: sneakers.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                  child: Icon(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
