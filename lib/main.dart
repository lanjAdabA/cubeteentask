

import 'package:cubetentask/pages/chart.page.dart';
import 'package:cubetentask/pages/detail.page.dart';
import 'package:cubetentask/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),    GoRoute(
          path: 'chart',
          builder: (BuildContext context, GoRouterState state) {
            return const ChartScreen();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
