import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({
    super.key,
    this.aspectRatio = 0.0,
    this.heightRatio = 0.0,
    this.assetName = '',
    this.onTap,
  });
  final double aspectRatio;
  final double heightRatio;
  final String assetName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * heightRatio,
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(assetName),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
