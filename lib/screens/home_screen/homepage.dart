import 'package:adidas_app/components/custom_text/custom_poppins_text.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ))),
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomPoppinsText(
                text: "Hello Darshana",
                fontWeight: FontWeight.w500,
              ),
              CustomPoppinsText(
                text: "Lets Start Shopping",
                color: Colors.grey.shade500,
                fontSize: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
