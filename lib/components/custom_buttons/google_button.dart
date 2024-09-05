import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
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
          height: 45,
          width: size.width * 0.75,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/google_icon.png",
                fit: BoxFit.cover,
                width: 30,
              ),
              const SizedBox(width: 5),
              const CustomPoppinsText(
                text: "Sign in with google",
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ), 
        ),
      ),
    );
  }
}