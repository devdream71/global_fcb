import 'package:fcb_global_app_v1/app/core/values/app_assets.dart';
import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:fcb_global_app_v1/app/core/values/app_space.dart';
import 'package:fcb_global_app_v1/app/modules/home/views/invest_view.dart';
import 'package:fcb_global_app_v1/app/modules/home/views/package_view.dart';
import 'package:fcb_global_app_v1/app/modules/settings/settings.dart';
import 'package:fcb_global_app_v1/app/modules/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(child: GetBuilder<HomeController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 15, bottom: 5),
                  color: AppColors.appcolor,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              onPressed: () {
                                Get.to(const Setting(), transition: Transition.rightToLeftWithFade);
                              },
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              ))),
                      buildRating(),
                      AppSpace.spaceH6,
                      buildBalance(),
                      AppSpace.spaceH16,
                      buildRefeRowView(),
                      AppSpace.spaceH10,
                      AppSpace.spaceH10,
                      buildCategory(),
                      AppSpace.spaceH18,
                      AppSpace.spaceH18,
                      historyIncomeButton(),
                    ],
                  ),
                ),
                AppSpace.spaceH6,
                controller.historyVisible == true
                    ? buildShowHistory()
                    : buildShowImcome(),
              ],
            );
          },
        )),
      ),
    );
  }

  buildShowHistory() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffF4F6FF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Withrow",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Binebce",
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text("12.10.2024"),
                          Text("12.10.2024"),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("50"),
                          Container(
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.yellow,
                            ),
                            child: const Text(
                              "Pending",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Link: S<flwredngvpe0h9u4jy940049"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  buildShowImcome() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffF4F6FF),
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ROI",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      AppSpace.spaceH4,
                      Text(
                        "Package-3",
                      ),
                    ],
                  ),
                  Text("12.10.2024"),
                  Text("50"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  historyIncomeButton() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            controller.historyVisible = true;
            controller.update();
            print(controller.historyVisible.toString());
          },
          child: Container(
            width: 80,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "History",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        AppSpace.spaceW10,
        InkWell(
          onTap: () {
            controller.historyVisible = false;
            controller.update();
            print(controller.historyVisible.toString());
          },
          child: Container(
            width: 80,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              "Income",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  buildRating() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AppAssets.appLogo),
        ),
        const Text(
          'Md. Mosiur Rahman Rangga',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        RatingBar.builder(
          initialRating: 2,
          minRating: 1,
          itemSize: 26,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          unratedColor: Colors.white,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }

  buildBalance() {
    return Container(
      height: 70,
      width: Get.width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "520\$",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "Withdrow",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Padding buildCategory() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => Get.to(() => PackageView()),
              child: Column(
                children: [
                  Icon(
                    Icons.api_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Package",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          AppSpace.spaceW10,
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => Get.to(() => InvestView()),
              child: Column(
                children: [
                  Icon(
                    Icons.api_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Invest",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          AppSpace.spaceW10,
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                Get.to(() => const TeamView());
              },
              child: Column(
                children: [
                  Icon(
                    Icons.api_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Team",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildRefeRowView() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: Get.width / 3,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffB4CFF4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "50\$",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Today ROI",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          AppSpace.spaceW10,
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: Get.width / 3,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffB4CFF4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "120\$",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Reference",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          AppSpace.spaceW10,
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: Get.width / 3,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffB4CFF4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "100\$",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Marching",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
