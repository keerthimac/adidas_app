import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.size, required this.onTap, required this.text,
  });

  final Size size;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 45,
          width: size.width * 0.75,
          decoration: BoxDecoration(
              color: Colors.orange.shade500,
              borderRadius: BorderRadius.circular(15)),
          child: CustomPoppinsText(
            text: text,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}