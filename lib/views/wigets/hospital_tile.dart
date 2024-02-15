import 'package:baby/constants/colors.dart';
import 'package:baby/views/wigets/my_custom_text.dart';
import 'package:flutter/material.dart';

class HospitalTile extends StatelessWidget {
  const HospitalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.celadon,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: AppColors.lightGray,
                  ),
                  CustomText(
                      size: 20,
                      color: AppColors.black,
                      fontWight: FontWeight.bold,
                      text: "Girum hospital"),
                  CustomText(
                      size: 20,
                      color: AppColors.black,
                      fontWight: FontWeight.normal,
                      text: "pastor"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
