import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentations/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {

    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final selectedColor = ref.watch(selectColorProvider);
    final appTheme = ref.watch(themeNotifierProvider); 
    
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
