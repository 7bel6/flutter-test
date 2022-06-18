import 'package:flutter/material.dart';

// create statless widget
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Web Screen Layout')
      ),
    );
  }
}