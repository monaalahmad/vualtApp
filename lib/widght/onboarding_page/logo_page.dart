import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
          'assets/images/logo_image.jpg',
          width: double.infinity,
          height: double.infinity,
        ),
    );
  }
}
