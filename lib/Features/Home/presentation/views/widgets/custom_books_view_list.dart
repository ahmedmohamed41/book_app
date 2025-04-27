import 'package:book_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_image_item.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomHorizontalBooksViewList extends StatelessWidget {
  const CustomHorizontalBooksViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => CustomImageItem(
              aspectRatio: 1 / 2,
              assetName: AssetsData.testImage,
              heightRatio: 0.18,
              onTap: () {
                Get.to(() => BookDetailsView(), transition: Transition.fade);
              },
            ),
        separatorBuilder: (context, index) => SizedBox(width: 15),
        itemCount: 10,
      ),
    );
  }
}
