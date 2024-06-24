import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: router,
        title: 'LstarGram',
      ),
    );
  }
}
