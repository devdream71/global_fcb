import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:fcb_global_app_v1/app/core/values/app_space.dart';
import 'package:fcb_global_app_v1/app/global_widget/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InvestView extends GetView {
  const InvestView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.appcolor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.api_outlined,
                          size: 60,
                          color: Colors.white,
                        ),
                        Text(
                          "Invest",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "Welcome For Invest",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  AppSpace.spaceH18,
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          "Package",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const CustomTextField(),
                  AppSpace.spaceH14,
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          "Your Wallet",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  CustomTextField(),
                  AppSpace.spaceH10,
                  AppSpace.spaceH10,
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 45,
                      width: 85,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
