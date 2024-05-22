import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/color_app/color_app.dart';
import 'drwar_list.dart';

class Drawar extends StatelessWidget {
  final BuildContext context;

  const Drawar({super.key, required this.context});

  Future<void> _showLogoutConfirmationDialog() async {

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('10'.tr),
          content: Text('11'.tr),
          actions: <Widget>[
            Row(
              children: [
                TextButton(
                  child: Text(
                    '13'.tr,
                    style: TextStyle(
                    color: ColorApp.brown,
                  ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                const Spacer(),
                TextButton(
                  child: Text(
                    '12'.tr,
                    style: TextStyle(
                    color: ColorApp.brown,
                  ),),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil("/HomePage", (route) => false);
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: DrawerHeader(
              child: Text(
                '1'.tr,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: ColorApp.white,
                  fontFamily: 'Poppins',
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius:const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ),
          DrawerList(
            title: "4".tr,
            press: (){
              Get.offAllNamed("/HomePage");
            },
            icon:const Icon(Icons.home),
          ),
          DrawerList(
            icon:const Icon(Icons.settings),
            title: "5".tr,
            press: (){
              Get.toNamed('/Setting');
            },
          ),
          DrawerList(
            icon:const Icon(Icons.logout),
            title: "6".tr,
            press: (){
              _showLogoutConfirmationDialog();
            },
          ),
          DrawerList(
            icon:const Icon(Icons.info_outline_rounded),
            title: "7".tr,
            press: (){
              Get.toNamed('/AboutApp');
            },
          ),
          const Spacer(),
          Image.asset("assets/images/onboarding3.jpg"),
        ],
      ),
    );
  }
}
