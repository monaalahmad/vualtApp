import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/text.dart';
import '../../model/text_form_field.dart';
import '../../shared/color_app/color_app.dart';
import '../../shared/static/auth.dart';
import 'login.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController secondemail = TextEditingController();

  List<String> items = ['Male', 'Female', 'Other'];
  String? selectedItem = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
                key: _formKey,
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
                                  height: 200
                              ),
                              Center(
                                child: CustomText(
                                  text:"33".tr,
                                  size: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primaryContainer,
                                ),
                              ),
                              Center(
                                child: CustomText(
                                  text:"34".tr,
                                  size: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Theme.of(context).colorScheme.primaryContainer,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.36,
                                    child:TextFormField2(
                                      controller: nameController,
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
                                        hintText: '35'.tr,
                                        hintStyle:const TextStyle(
                                          color: Color(0XFF4D4C4C),                            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty ||
                                            !RegExp(r'^[a-z A-Z 0-9]+$')
                                                .hasMatch(value!)) {
                                          return '36'.tr;
                                        } else {
                                          return null;
                                        }
                                      },
                                      labelText: '35'.tr,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.36,
                                    child:TextFormField2(
                                      controller: lastnameController,
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
                                        hintText: '38'.tr,
                                        hintStyle:const TextStyle(
                                          color: Color(0XFF4D4C4C),                            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty ||
                                            !RegExp(r'^[a-z A-Z 0-9]+$')
                                                .hasMatch(value!)) {
                                          return '37'.tr;
                                        } else {
                                          return null;
                                        }
                                      },
                                      labelText: '38'.tr,
                                    ),
                                  ),
                                ],
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
                                controller: phoneController,
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
                                  hintText: '40'.tr,
                                  hintStyle:const TextStyle(
                                    color: Color(0XFF4D4C4C),                            ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z 0-9]+$')
                                          .hasMatch(value!)) {
                                    return '41'.tr;
                                  } else {
                                    return null;
                                  }
                                },
                                labelText: '40'.tr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField2(
                                controller: passwordController,
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
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {}
                                    },
                                    child: Text(
                                      '39'.tr,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
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
