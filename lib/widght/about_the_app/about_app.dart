import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/color_app/color_app.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
                'assets/images/onboarding3.jpg',
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  '',
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
