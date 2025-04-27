import 'package:book_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomBooksViewList extends StatelessWidget {
  const CustomBooksViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomListViewItem(),
        separatorBuilder: (context, index) => SizedBox(width: 15),
        itemCount: 10,
      ),
    );
  }
}
