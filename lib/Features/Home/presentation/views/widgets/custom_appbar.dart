import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo1, scale: 3),
        Spacer(),
        MaterialButton(
          onPressed: () {},
          child: Icon(Icons.search_rounded, size: 30),
        ),
      ],
    );
  }
}