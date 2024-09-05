import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.size, required this.onTap,
  });

  final Size size;
  final VoidCallback onTap;

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
          child: const CustomPoppinsText(
            text: "Sign in",
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}