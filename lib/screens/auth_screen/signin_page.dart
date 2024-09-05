import 'package:adidas_app/components/custom_buttons/custom_button1.dart';
import 'package:adidas_app/components/custom_buttons/google_button.dart';
import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:adidas_app/components/custom_text_field/custom_text_field_01.dart';
import 'package:adidas_app/screens/auth_screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            const CustomPoppinsText(
              text: "Adidas",
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            const CustomPoppinsText(
              text: "Please fill your details to access your account",
              fontSize: 17,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              label: "Email",
              icon: Icons.email_outlined,
              controller: emailController,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              label: "Password",
              icon: Icons.password,
              isPassword: true,
              controller: passwordController,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const CustomPoppinsText(
                  text: "Remamber Me?",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                const Spacer(),
                CustomPoppinsText(
                  text: "Forget Password?",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.orange.shade800,
                ),
              ],
            ),
            const SizedBox(height: 15),
            CustomButton1(
              size: size,
              onTap: () {},
            ),
            const SizedBox(height: 10),
            GoogleButton(
              size: size,
              onTap: () {},
            ),
            const SizedBox(height: 10),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignupPage();
                    },
                  ));
                },
                child: Text.rich(
                    TextSpan(text: "Dont have an account? ", children: [
                  TextSpan(
                      text: "Sign up",
                      style: GoogleFonts.poppins(color: Colors.orange.shade800))
                ])),
              ),
            )
          ],
        ),
      )),
    );
  }
}
