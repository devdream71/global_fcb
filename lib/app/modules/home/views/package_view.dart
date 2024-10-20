import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PackageView extends GetView {
  const PackageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appcolor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 15),
              child: Column(
                children: [
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.red,
                              ))),
                      const Icon(
                        Icons.api_outlined,
                        size: 70,
                        color: Colors.white,
                      ),
                      const Text(
                        "Package",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const  NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            //color: Colors.red,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Package-1",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Invest: 3000\$",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Deposit Bhunas: 0 ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Daily Roi: 70\$ + ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "ROI Generate: 200 Days ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
