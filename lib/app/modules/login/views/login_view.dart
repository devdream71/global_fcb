import 'package:fcb_global_app_v1/app/core/values/app_assets.dart';
import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:fcb_global_app_v1/app/core/values/app_space.dart';
import 'package:fcb_global_app_v1/app/global_widget/custom_textfield.dart';
import 'package:fcb_global_app_v1/app/modules/login/views/login_pass_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AppAssets.appLogo),
                          ),
                        ),
                      ),
                      AppSpace.spaceH10,
                      const Text(
                        "Welcome To FCB Global",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      AppSpace.spaceH18,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "E-Mail",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const CustomTextField(
                            height: 50,
                            radius: 8,
                          ),
                          AppSpace.spaceH14,
                          InkWell(
                            onTap: () {
                              Get.to(() => LoginPassView(),
                                  transition: Transition.rightToLeft);
                            },
                            child: Container(
                              height: 50,
                              width: Get.width,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.buttonColor),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          AppSpace.spaceH14,
                          const Text(
                            "Foregate Your password?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    AppAssets.logo,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
