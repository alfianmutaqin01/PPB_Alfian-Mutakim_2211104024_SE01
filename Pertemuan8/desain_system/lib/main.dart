import 'package:desain_system/design_system/styles/color_collection.dart';
import 'package:desain_system/design_system/styles/spacing_collection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World!',
                style: TextStyle(
                  color: ColorCollection.primary900,
                  wordSpacing: SpacingCollection.sm,
                ),
              ),
              Text(
                'Hello World!',
                style: TextStyle(
                  color: ColorCollection.primary900,
                  wordSpacing: SpacingCollection.sm,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
