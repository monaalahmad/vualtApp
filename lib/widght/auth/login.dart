import 'package:flutter/material.dart';
import '../../model/buttom.dart';
import '../../model/text.dart';
import '../../model/text_form_field.dart';
import '../../shared/color_app/color_app.dart';
import '../../shared/static/auth.dart';
import 'forgot_pass.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  var _formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Stack(
          children: [
            const BackWidghtLogin(),
            SingleChildScrollView(
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 300,
                      ),
                      CustomText(
                        text: '19'.tr,
                        size: 35,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField2(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primaryContainer,
                              ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primaryContainer,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: '20'.tr,
                          hintStyle:const TextStyle(
                            color: Color(0XFF4D4C4C),                            ),
                        ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z 0-9]+$')
                                    .hasMatch(value!)) {
                              return '21'.tr;
                            } else {
                              return null;
                            }
                          },
                        labelText: '20'.tr,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField2(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:  Theme.of(context).colorScheme.primaryContainer,),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: '22'.tr,
                          hintStyle:const TextStyle(
                            color: Color(0XFF4D4C4C),                            ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z 0-9]+$')
                                  .hasMatch(value!)) {
                            return '23'.tr;
                          } else {
                            return null;
                          }
                        },
                        labelText: '22'.tr,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Button(
                            text: '19'.tr,
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                /*BlocProvider.of<LoginCubit>(
                          context)
                      .userLogin(
                          email:
                              emailController.text,
                          password:
                              password.text);*/
                              }
                              else{
                                Get.toNamed('/HomePage',);
                              }
                            },
                            width: 260,
                            height: 50,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 159),
                        child: TextButton(
                          onPressed: () {
                           Get.toNamed('/ForgotPass',);
                          },
                          child: Text(
                            '24'.tr,
                            style: TextStyle(
                              fontSize: 13,
                              color: Theme.of(context).colorScheme.primaryContainer,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "25".tr,
                            color: Theme.of(context).colorScheme.primaryContainer,
                            size: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed("/UserPage",);
                            },
                            child: Center(
                              child: Text(
                                "26".tr,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
