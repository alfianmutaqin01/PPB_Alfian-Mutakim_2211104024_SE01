import 'package:flutter/material.dart';
import 'myapi_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API Perangkat Keras',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyApiPage(),
    );
  }
}
