import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskr/config/theme/light_theme.dart';
import 'package:taskr/features/dashboard/presentation/view/dahsboard_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(lightThemeProvider);
    return MaterialApp(
      title: 'To Do',
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        platform: TargetPlatform.android,
        navigationBarTheme: NavigationBarThemeData(),
        colorSchemeSeed: Color.fromRGBO(188, 0, 74, 1.0),
      ),
      themeMode: ThemeMode.dark,
      home: const DashboarView(),
    );
  }
}
