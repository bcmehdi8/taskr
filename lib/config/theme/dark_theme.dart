import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final darkThemeProvider = StateNotifierProvider<DarkThemeNotifier, ThemeData>(
  (_) => DarkThemeNotifier(),
  name: 'Dark Theme Notifier',
);

class DarkThemeNotifier extends StateNotifier<ThemeData> {
  DarkThemeNotifier()
      : super(
          ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
          ),
        );
}
