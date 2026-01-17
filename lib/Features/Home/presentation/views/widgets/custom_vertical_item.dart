import 'package:book_app/Features/Home/presentation/views/widgets/custom_image_item.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomVerticalItem extends StatelessWidget {
  const CustomVerticalItem({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const CustomImageItem(
            aspectRatio: 1 / 2,
            assetName: AssetsData.testImage,
            heightRatio: 0.17,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter \nand the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'J.K.Rowling',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                        ),
                        const Text('4.8', style: Styles.textStyle16),
                        const SizedBox(width: 7),
                        Text(
                          '(2390)',
                          style: Styles.textStyle14.copyWith(
                            color: Colors.white.withAlpha(100),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
