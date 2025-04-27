import 'package:book_app/Features/Home/presentation/views/widgets/custom_vertical_item.dart';
import 'package:flutter/material.dart';

class CustomVerticalListItem extends StatelessWidget {
  const CustomVerticalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => CustomVerticalItem(),
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: 10,
        ),
      ),
    );
  }
}
