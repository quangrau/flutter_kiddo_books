import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:go_router/go_router.dart';

import 'package:audiobook/src/utils/app_styles.dart';

/// The enum for scaffold tab.
enum ScaffoldTab { home, favorites, settings }

/// The scaffold for the AudioBook app
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.selectedTab,
    required this.child,
    Key? key,
  }) : super(key: key);

  /// Which tab of the scaffold to display.
  final ScaffoldTab selectedTab;

  /// The scaffold body.
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: AdaptiveNavigationScaffold(
          selectedIndex: selectedTab.index,
          body: child,
          onDestinationSelected: (int idx) {
            switch (ScaffoldTab.values[idx]) {
              case ScaffoldTab.home:
                context.go('/home');
                break;

              case ScaffoldTab.favorites:
                context.go('/books/favorites');
                break;

              case ScaffoldTab.settings:
                context.go('/settings');
                break;
            }
          },
          destinations: const <AdaptiveScaffoldDestination>[
            AdaptiveScaffoldDestination(
              title: 'Home',
              icon: FluentSystemIcons.ic_fluent_home_regular,
            ),
            AdaptiveScaffoldDestination(
              title: 'Favorites',
              icon: FluentSystemIcons.ic_fluent_favorites_regular,
            ),
            AdaptiveScaffoldDestination(
              title: 'Settings',
              icon: FluentSystemIcons.ic_fluent_settings_regular,
            ),
          ],
        ),
      );
}
