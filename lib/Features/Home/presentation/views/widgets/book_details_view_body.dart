import 'package:book_app/Features/Home/presentation/views/widgets/custom_appbar_details.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_image_item.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_item_details_view.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_vertical_details_view_list.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbarDetails(),
          SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CustomImageItem(
              aspectRatio: 1 / 2,
              heightRatio: 0.18,
              assetName: AssetsData.testImage,
            ),
          ),
          SizedBox(height: 20),
          Text('The Jungle Book', style: Styles.textStyle30),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              color: Colors.white.withAlpha(150),
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.star, size: 20, color: Colors.yellow),
              ),
              Text('4.8', style: Styles.textStyle16),
              SizedBox(width: 7),
              Text(
                '(2390)',
                style: Styles.textStyle14.copyWith(
                  color: Colors.white.withAlpha(100),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomItemDetailsView(
                colorContainar: Colors.white,
                colorText: Colors.black,
                titleText: '19.99€',
                topLeft: Radius.circular(13),
                bottomLeft: Radius.circular(13),
              ),
              CustomItemDetailsView(
                colorContainar: Colors.red,
                colorText: Colors.white,
                titleText: 'Free preview',
                bottomRight: Radius.circular(13),
                topRight: Radius.circular(13),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('You can also like'),
              ),
            ],
          ),
          SizedBox(height: 15),
          CustomHorizontalDetailsViewList(),
        ],
      ),
    );
  }
}
