import 'package:book_app/Features/Home/presentation/views/widgets/custom_books_view_list.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          CustomAppbar(),
          SizedBox(height: 20),
          CustomBooksViewList(),
          SizedBox(height: 30),
          Text('Best Seller', style: Styles.titleMedum),
        ],
      ),
    );
  }
}
