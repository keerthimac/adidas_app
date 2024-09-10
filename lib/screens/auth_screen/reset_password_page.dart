import 'package:adidas_app/components/custom_buttons/custom_button1.dart';
import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:adidas_app/components/custom_text_field/custom_text_field_01.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                BackButton(),
                CustomPoppinsText(
                  text: "Reset your password",
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ],
            ),
            const CustomPoppinsText(
              text: "Enter your email and get your password reset email",
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              label: "Email",
              icon: Icons.email_outlined,
              controller: emailController,
            ),
            const SizedBox(height: 15),
            CustomButton1(
              text: "Send Reset Email",
              size: size,
              onTap: () {},
            ),
          ],
        ),
      )),
    );
  }
}
