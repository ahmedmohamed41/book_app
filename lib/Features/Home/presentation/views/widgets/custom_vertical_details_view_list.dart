
import 'package:book_app/Features/Home/presentation/views/widgets/custom_image_item.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomVerticalDetailsViewList extends StatelessWidget {
  const CustomVerticalDetailsViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context, index) => CustomImageItem(
                aspectRatio: 2 / 3,
                heightRatio: 0.18,
                assetName: AssetsData.testImage,
              ),
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemCount: 10,
        ),
      ),
    );
  }
}
