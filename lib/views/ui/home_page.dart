import 'package:baby/constants/colors.dart';
import 'package:baby/views/wigets/hospital_tile.dart';
import 'package:baby/views/wigets/my_custom_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.lightGray,
                backgroundImage: AssetImage("assets/user.jpeg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: CustomText(
                  size: 30,
                  color: AppColors.lightGray,
                  fontWight: FontWeight.normal,
                  text: "Welcome back,"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: CustomText(
                  size: 40,
                  color: AppColors.black,
                  fontWight: FontWeight.bold,
                  text: "Welcome back"),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    size: 25,
                    color: AppColors.lightGray,
                    fontWight: FontWeight.normal,
                    text: "Near by hospitals",
                  ),
                  CustomText(
                    size: 15,
                    color: AppColors.turquoise,
                    fontWight: FontWeight.normal,
                    text: "See All",
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            const HospitalTile()
          ],
        ),
      ),
    );
  }
}
