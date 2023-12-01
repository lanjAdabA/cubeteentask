

import 'package:cubetentask/pages/Listdata.page.dart';
import 'package:cubetentask/pages/about.page%20.dart';
import 'package:cubetentask/pages/chart.column.page.dart';
import 'package:cubetentask/pages/chart.page.dart';
import 'package:cubetentask/pages/detail.page.dart';
import 'package:cubetentask/pages/home.page.dart';
import 'package:cubetentask/pages/linegraph.page.dart';
import 'package:cubetentask/pages/signin.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
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
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) {
            return const SigninPage();
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
            return  const ChartScreen();
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
          GoRoute(
          path: 'line',
          builder: (BuildContext context, GoRouterState state) {
            return const Linegraph();
          },
        ), GoRoute(
          path: 'column',
          builder: (BuildContext context, GoRouterState state) {
            return const Columnpage();
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
       theme: ThemeData(primarySwatch: Colors.teal, appBarTheme:  const AppBarTheme(color: Color.fromARGB(255, 198, 198, 242))),
       debugShowCheckedModeBanner:  false
       ,
      routerConfig: _router,
    );
  }
}
