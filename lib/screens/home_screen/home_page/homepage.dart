import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:adidas_app/models/sneaker_model.dart';
import 'package:adidas_app/screens/home_screen/home_page/widgets/Items_grid.dart';
import 'package:adidas_app/screens/home_screen/home_page/widgets/categories_list.dart';
import 'package:adidas_app/utils/home_icons_list.dart';
import 'package:adidas_app/utils/sneakers_data.dart';
import 'package:flutter/material.dart';

import 'widgets/action_bar.dart';
import 'widgets/custom_carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<IconData> icons = HomePageIcons.icons;
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
                const ActionBar(),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPoppinsText(
                      text: "Top Catogories",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    CustomPoppinsText(
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
                CategoriesList(icons: icons),
                ItemsGrid(sneakers: sneakers)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
