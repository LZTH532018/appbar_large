import 'package:flutter/material.dart';
import 'package:appbar_large/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.pink, width: 4))),
        primaryColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
