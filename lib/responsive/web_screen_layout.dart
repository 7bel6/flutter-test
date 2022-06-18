import 'package:flutter/material.dart';

// create statless widget
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Web Screen Layout')
      ),
    );
  }
}