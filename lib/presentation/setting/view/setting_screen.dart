import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final String theme;

  const SettingScreen({
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingScreen'),
      ),
      body: Center(
        child: Text('theme : $theme'),
      ),
    );
  }
}
