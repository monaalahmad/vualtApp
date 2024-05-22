import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/color_app/color_app.dart';

class Button extends MaterialButton {
  final double width;
  final double height;

  Button({
    required String text,
    required Function onPressed,
    required this.width,
    required this.height,
    required Color color,
  }) : super(
    color: color,
    onPressed: () => onPressed(),
    child: Container(
      width: width,
      height: height,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: ColorApp.white,
          ),
        ),
      ),
    ),
  );
}
