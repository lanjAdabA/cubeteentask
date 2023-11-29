

import 'package:cubetentask/pages/Listdata.page.dart';
import 'package:cubetentask/pages/about.page%20.dart';
import 'package:cubetentask/pages/chart.page.dart';
import 'package:cubetentask/pages/detail.page.dart';
import 'package:cubetentask/pages/home.page.dart';
import 'package:cubetentask/pages/loggedin.page.dart';
import 'package:cubetentask/pages/signin.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SigninPage();
      },
      routes: <RouteBase>[
          GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ), 
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
        ),GoRoute(
          path: 'list',
          builder: (BuildContext context, GoRouterState state) {
            return const ListData();
          },  ),
          GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutScreen();
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
       debugShowCheckedModeBanner:  false
       ,
      routerConfig: _router,
    );
  }
}
