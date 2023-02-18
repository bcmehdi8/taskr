import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final lightThemeProvider = StateNotifierProvider<LightThemeNotifier, ThemeData>(
  (_) => LightThemeNotifier(),
  name: 'Light Theme Notifier',
);

class LightThemeNotifier extends StateNotifier<ThemeData> {
  LightThemeNotifier() : super(ThemeData()) {
    init();
  }

  void init() {
    state = ThemeData(
      useMaterial3: true,
    );
  }
}
