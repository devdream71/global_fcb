import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appcolor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          size: 40,
                          Icons.settings,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          size: 40,
                          Icons.cancel,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Package",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Invest",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Team",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Withdraw",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Deposit",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Send Money",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "log out",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
