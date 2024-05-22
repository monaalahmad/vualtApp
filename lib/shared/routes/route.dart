import 'package:flutter/cupertino.dart';

import '../../widght/about_the_app/about_app.dart';
import '../../widght/auth/forgot_code.dart';
import '../../widght/auth/forgot_pass.dart';
import '../../widght/auth/login.dart';
import '../../widght/auth/register.dart';
import '../../widght/auth/reset_pass.dart';
import '../../widght/home_page/home_page.dart';
import '../../widght/setting/setting.dart';
import '../../widght/view_product/view_product.dart';
import '../static/auth.dart';

Map<String , Widget Function(BuildContext)> routs = {

  "/Login" : (context) =>  LoginPage(),
  "/HomePage" : (context) =>  HomePage(),
  "/Setting" : (context) =>  Setting(),
  "/AboutApp" : (context) =>  AboutApp(),
  "/ViewProduct" : (context) =>  ViewProduct(),
  "/BackWidghtLogin" : (context) =>  BackWidghtLogin(),
  "/UserPage" : (context) =>  UserPage(),
  "/ForgotCode" : (context) =>  ForgotCode(),
  "/ForgotPass" : (context) =>  ForgotPass(),
  "/ResetPass" : (context) =>  ResetPass(),
};