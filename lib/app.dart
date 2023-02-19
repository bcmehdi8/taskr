import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taskr/config/theme/dark_theme.dart';
import 'package:taskr/config/theme/light_theme.dart';
import 'package:taskr/features/dashboard/presentation/view/dahsboard_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightTheme = ref.watch(lightThemeProvider);
    final darkTheme = ref.watch(darkThemeProvider);

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp(
          title: 'To Do',
          theme: lightTheme.copyWith(colorScheme: lightDynamic),
          darkTheme: darkTheme.copyWith(colorScheme: darkDynamic),
          themeMode: ThemeMode.dark,
          home: const DashboarView(),
        );
      },
    );
  }
}
