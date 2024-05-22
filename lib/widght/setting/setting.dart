import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../local/local_controller.dart';
import '../../shared/color_app/color_app.dart';
import '../../theme/theme_provider.dart';
import '../drawar/drwar_list.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Setting extends StatelessWidget {

  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController myLocaleController = Get.find();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("5".tr),
      ),
      body: Column(
        children: [
          DrawerList(
              title: '8'.tr,
              icon: Icon(
                Icons.dark_mode_rounded,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              press: () {
                Provider.of<ThemeProvider>(context , listen: false).toggleTheme();
              }
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorApp.grey300,
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Icon(Icons.language),
                const SizedBox(width: 30,),
                Expanded(
                  child: DropdownButton<String>(
                    value: MyLocaleController.sharedPreferences?.getString("lang") ?? 'en',
                    items: const [
                      DropdownMenuItem(
                        value: "en",
                        child: Text('English'),
                      ),
                      DropdownMenuItem(
                        value: "ar",
                        child: Text('Arabic'),
                      ),
                    ],
                    onChanged: (newValue) {
                      MyLocaleController.changeLanguage(newValue!);
                    },
                    icon: null,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorApp.grey300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// DrawerList(
//   press: () {
//     Get.put(SharedPreferences);
//     String currentLocale = MyLocaleController.sharedPreferences?.getString("lang") ?? 'en';
//     String newLocale = currentLocale == "en" ? "ar" : "en";
//     MyLocaleController.changeLanguage(newLocale);
//   },
//   title: '9'.tr,
//   icon: Icon(
//       Icons.language,
//     color: Theme.of(context).colorScheme.primaryContainer,
//   ),
// ),
