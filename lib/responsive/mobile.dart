import 'package:flutter/material.dart';

import '../shared/color_app/color_app.dart';
import '../widght/onboarding_page/logo_page.dart';
import '../widght/onboarding_page/onboarding_page.dart';

class Mobile extends StatefulWidget {

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.white,
      body: LogoPage(),
    );
  }
}