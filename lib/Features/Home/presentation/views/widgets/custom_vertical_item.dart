import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomVerticalItem extends StatelessWidget {
  const CustomVerticalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
          child: AspectRatio(
            aspectRatio: 2 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(AssetsData.logo1),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter \nand the Goblet of Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20,
              ),
              Text(
                'J.K.Rowling',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('19.99 €', style: Styles.textStyle20),
                  Spacer(),
                  Row(
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
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
