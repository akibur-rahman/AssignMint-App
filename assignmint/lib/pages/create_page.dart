import 'package:assignmint/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Assignment', style: AppTheme.HeadingTextStyle),
        backgroundColor: Color(0xffdcfce7),
      ),
      body: Center(child: Text('Create Assignment Page')),
    );
  }
}
