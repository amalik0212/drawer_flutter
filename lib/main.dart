import 'package:drawer_flutter/Components/RegisterClassses.dart';
import 'package:drawer_flutter/Drawer/Drawer_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DrawerScreen(),
    );
  }
}
