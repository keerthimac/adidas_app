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
    return Scaffold(
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
                          Image.network(sneakers[index].image)],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
