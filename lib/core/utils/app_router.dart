import 'package:book_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:book_app/Features/Home/presentation/views/home_page_view.dart';
import 'package:book_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:book_app/Features/search/view/search_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kSplashView = '/';
  static const kHomePage = '/homepage';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView ';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomePage, builder: (context, state) => const HomePage()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
