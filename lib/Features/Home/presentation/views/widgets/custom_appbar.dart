import 'package:book_app/Features/search/view/search_view.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbarHome extends StatelessWidget {
  const CustomAppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo1, scale: 3),
        Spacer(),
        IconButton(
          onPressed: () {
            Get.to(() => SearchView());
          },
          icon: Icon(Icons.search_outlined, size: 30),
        ),
      ],
    );
  }
}
