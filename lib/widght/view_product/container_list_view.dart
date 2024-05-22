import 'package:flutter/material.dart';

class ContainerListView extends StatelessWidget {
  final AssetImage image;
  final VoidCallback onTap; // Add onTap callback

  const ContainerListView({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Call the provided callback on tap
      child: Container(
        width: 100,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image.assetName,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
