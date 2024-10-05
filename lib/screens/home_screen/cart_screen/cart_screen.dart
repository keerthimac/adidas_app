import 'package:adidas_app/components/custom_buttons/custom_button1.dart';
import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:adidas_app/models/sneaker_model.dart';
import 'package:adidas_app/utils/sneakers_data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<SneakerModel> sneakers = SneakersData.sneakers;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  BackButton(),
                  Spacer(),
                  CustomPoppinsText(text: "My Cart"),
                  Spacer()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sneakers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBEEF0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          NetworkImage(sneakers[index].image))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomPoppinsText(
                                  text: sneakers[index].title,
                                  fontSize: 18,
                                ),
                                Chip(
                                  label: Text(
                                    "LKR ${sneakers[index].price.toString()}0",
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFEBEEF0),
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(
                                      color: Colors.orange.shade900)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    color: Colors.orange.shade900,
                                  ),
                                  const CustomPoppinsText(text: "1"),
                                  Icon(
                                    Icons.add,
                                    color: Colors.orange.shade900,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomPoppinsText(
                            text: "Total",
                            color: Colors.white,
                          ),
                          CustomPoppinsText(
                            text: "LKR 12500/=",
                            color: Colors.orange.shade500,
                          )
                        ],
                      ),
                    ),
                    CustomButton1(
                        size: MediaQuery.sizeOf(context),
                        onTap: () {},
                        text: "Buy Now")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
