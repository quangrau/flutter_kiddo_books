import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/auth.dart';
import 'src/screens/book_details.dart';
import 'src/screens/home.dart';
import 'src/screens/books.dart';
import 'src/screens/scaffold.dart';
import 'src/screens/settings.dart';

void main() {
  runApp(AudioBookApp());
}

class AudioBookApp extends StatelessWidget {
  AudioBookApp({super.key});

  final ValueKey<String> _scaffoldKey = const ValueKey<String>('App scaffold');

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) => AudioBookAuthScope(
        notifier: _auth,
        child: MaterialApp.router(
          routerConfig: _router,
        ),
      );

  final AudioBookAuth _auth = AudioBookAuth();

  late final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        redirect: (_, __) => '/home',
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            FadeTransitionPage(
          key: _scaffoldKey,
          child: const AppScaffold(
            selectedTab: ScaffoldTab.home,
            child: HomeScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/settings',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            FadeTransitionPage(
          key: _scaffoldKey,
          child: const AppScaffold(
            selectedTab: ScaffoldTab.settings,
            child: SettingsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/book_details/:bookId',
        builder: (BuildContext context, GoRouterState state) {
          final String bookId = state.params['bookId']!;

          return BookDetailsScreen(bookId);
        },
      ),
      GoRoute(
        path: '/books',
        redirect: (_, __) => '/books/popular',
      ),
      GoRoute(
        path: '/books/:kind(new|all|popular|favorites)',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            FadeTransitionPage(
          key: _scaffoldKey,
          child: AppScaffold(
            selectedTab: ScaffoldTab.favorites,
            child: BooksScreen(state.params['kind']!),
          ),
        ),
      ),
    ],
    debugLogDiagnostics: true,
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
