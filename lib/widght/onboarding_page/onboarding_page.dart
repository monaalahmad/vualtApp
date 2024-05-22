import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../../model/buttom.dart';
import '../../shared/color_app/color_app.dart';
import '../../shared/constant/custom_silder_onboarding.dart';
import '../../shared/static/onboarding_static.dart';
import 'package:get/get.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (val){
            controller.onPageChanged(val);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Container(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  onBoardingList[i].imageUrl!,
                  width: 250,
                  height: 300,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.grey[700],
                      fontSize: 17,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const CustomSliderOnBoarding(),
                      const Spacer(flex: 1,),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Button(
                            width: 450,
                            height: 40,
                            color: Theme.of(context).colorScheme.primary,
                            text: '2'.tr,
                            onPressed: (){
                            controller.next();
                          },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
