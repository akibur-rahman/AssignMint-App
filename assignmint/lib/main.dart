import 'package:assignmint/pages/main_scaffold_page.dart';
import 'package:assignmint/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScaffold(),
      theme: AppTheme.lightTheme,
    );
  }
}
