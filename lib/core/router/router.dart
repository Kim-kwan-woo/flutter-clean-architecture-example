import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/page/app.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const App();
      },
    ),
  ],
);
