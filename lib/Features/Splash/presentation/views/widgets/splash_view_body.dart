import 'package:book_app/Features/HomePage/presentation/views/home_page_view.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => HomePage(), transition: Transition.fade);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo1),

        Text('Read Free Books', textAlign: TextAlign.center),
      ],
    );
  }
}
