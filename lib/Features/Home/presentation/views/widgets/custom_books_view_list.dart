import 'package:book_app/Features/Home/presentation/views/widgets/custom_image_item.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHorizontalBooksViewList extends StatelessWidget {
  const CustomHorizontalBooksViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => CustomImageItem(
              aspectRatio: 2 / 3,
              assetName: AssetsData.testImage,
              heightRatio: 0.18,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
            ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: 10,
      ),
    );
  }
}
