import 'package:book_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashView());
  }
}
