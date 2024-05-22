import 'package:chocolate_app/controller/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../color_app/color_app.dart';
import '../static/onboarding_static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return  GetBuilder<OnBoardingControllerImp>(
      // init: OnBoardingControllerImp(),
      builder:(controller) =>  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
                (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width:  controller.currentPage == index ? 20 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: ColorApp.BrownChocola,
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
