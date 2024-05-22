import 'package:chocolate_app/widght/auth/reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/buttom.dart';
import '../../model/text.dart';
import '../../model/text_form_field.dart';
import '../../shared/color_app/color_app.dart';
import '../../shared/static/auth.dart';

class ForgotCode extends StatefulWidget {
  @override
  _ForgotCodeState createState() => _ForgotCodeState();
}

class _ForgotCodeState extends State<ForgotCode> {
  var _formkey = GlobalKey<FormState>();
  var codeController = TextEditingController();

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
                                text:"29".tr,
                                size: 20,
                                color: Theme.of(context).colorScheme.primaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomText(
                                text : "30".tr,
                                size: 16,
                                color: Theme.of(context).colorScheme.primaryContainer,
                                fontWeight: FontWeight.normal,
                              ),
                              const SizedBox(height: 80,),
                              TextFormField2(
                                controller: codeController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).colorScheme.primaryContainer,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Theme.of(context).colorScheme.primaryContainer,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: '31'.tr,
                                  hintStyle:const TextStyle(
                                    color: Color(0XFF4D4C4C),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z 0-9]+$')
                                          .hasMatch(value!)) {
                                    return '32'.tr;
                                  } else {
                                    return null;
                                  }
                                },
                                labelText: '31'.tr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Button(
                                    text: '2'.tr,
                                     onPressed: (){
                                        Get.toNamed('/ResetPass',);
                                  },
                                    width: 260,
                                    height: 50,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
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
