import 'dart:async';
import 'package:flutter/material.dart';
import '../../model/buttom.dart';
import '../../shared/color_app/color_app.dart';
import '../drawar/drawar_sreen.dart';
import 'package:get/get.dart';

import '../view_product/view_product.dart';

class HomePage extends StatefulWidget {
  final List<String> imagePaths = [
    'assets/images/logo_image.jpg',
    'assets/images/onboarding2.jpg',
  ]; // List of image paths

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentImageIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentImageIndex =
            (_currentImageIndex + 1) % widget.imagePaths.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          '1'.tr,
          style: TextStyle(
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawar(
        context: context,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Image.asset(widget.imagePaths[_currentImageIndex]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Button(
                          text: '3'.tr,
                          onPressed: () {
                            Get.toNamed("/ViewProduct");
                          },
                          width: 150,
                          height: 150,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Button(
                          text: '3'.tr,
                          onPressed: () {
                            print('Button Clicked!');
                          },
                          width: 150,
                          height: 150,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Button(
                          text: '3'.tr,
                          color: Theme.of(context).colorScheme.primary,
                          onPressed: () {
                            print('Button Clicked!');
                            // Get.toNamed("/BackWidghtLogin");
                          },
                          width: 150,
                          height: 150,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Button(
                          text: '3'.tr,
                          color: Theme.of(context).colorScheme.primary,
                          onPressed: () {
                            print('Button Clicked!');
                            // Get.toNamed("/Login");
                          },
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
