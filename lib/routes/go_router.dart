import 'package:go_router/go_router.dart';
import 'package:superbootcamp_flutter/routes/named_go_router.dart';
import 'package:superbootcamp_flutter/view/pages.dart';

class AppRouter {
  /// ---- start singleto code ---///
  static final AppRouter shared = AppRouter._internal();

  factory AppRouter() {
    return shared;
  }

  AppRouter._internal();

  final router = GoRouter(routes: [
    GoRoute(
      path: RouteNames.splashPage,
      name: RouteNames.splashPage,
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: RouteNames.halaman1,
      name: RouteNames.halaman1,
      builder: (context, state) => Halaman1pages(),
    ),
    GoRoute(
      path: RouteNames.halamanListView,
      name: RouteNames.halamanListView,
      builder: (context, state) => ListViewPages(),
    ),
    GoRoute(
      path: RouteNames.halaman2,
      name: RouteNames.halaman2,
      builder: (context, state) {
        final extra = state.extra != null
            ? state.extra as Map<String, dynamic>
            : {"key": "value"};
        return Halaman2pages(
          angka: extra['angka'],
        );
      },
    ),
  ]);
}
