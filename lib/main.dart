import 'package:chocolate_app/local/local_controller.dart';
import 'package:chocolate_app/responsive/mobile.dart';
import 'package:chocolate_app/responsive/responsive.dart';
import 'package:chocolate_app/shared/routes/route.dart';
import 'package:chocolate_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'local/local.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await Get.putAsync(() async => MyLocaleController(sharedPreferences));
  Get.put(sharedPreferences);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '1'.tr,
      debugShowCheckedModeBanner: false,
      locale: Get.find<MyLocaleController>().initLang,
      translations: MyLocal(),
      home: Responsive(
        mobile: Mobile(),
      ),
      routes: routs,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}