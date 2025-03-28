import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignmint/pages/main_scaffold_page.dart';
import 'package:assignmint/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScaffold(),
      theme: AppTheme.lightTheme,
    );
  }
}
