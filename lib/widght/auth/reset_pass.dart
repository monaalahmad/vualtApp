import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/buttom.dart';
import '../../model/text.dart';
import '../../model/text_form_field.dart';
import '../../shared/color_app/color_app.dart';
import '../../shared/static/auth.dart';
import 'login.dart';

class ResetPass extends StatefulWidget {
  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  var _formkey = GlobalKey<FormState>();

  var confirmpassword = TextEditingController();
  var newpassword = TextEditingController();

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
                                text:"42".tr,
                                size: 35,
                                color: Theme.of(context).colorScheme.primaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomText(
                                text:"43".tr,
                                size: 15,
                                color: Theme.of(context).colorScheme.primaryContainer,
                                fontWeight: FontWeight.normal,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField2(
                                controller: newpassword,
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
                                  hintText: '23'.tr,
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
                                labelText: '23'.tr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField2(
                                controller: confirmpassword,
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
                                  hintText: '44'.tr,
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
                                labelText: '44'.tr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                      child: Button(
                                        text: '42'.tr,
                                        onPressed: (){
                                          Get.toNamed('/Login');
                                        },
                                        width: 260,
                                        height: 50,
                                        color: Theme.of(context).colorScheme.primary,
                                      ),
                                    ),
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
