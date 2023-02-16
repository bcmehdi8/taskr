import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskr/config/theme/light_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(lightThemeProvider);
    return MaterialApp(
      title: 'To Do',
      theme: theme,
      home: const Scaffold(),
    );
  }
}
