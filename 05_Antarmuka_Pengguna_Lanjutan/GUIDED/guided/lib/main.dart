import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Navbar'), // Judul Navbar
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                // Aksi saat tombol home ditekan
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                // Aksi saat tombol settings ditekan
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Flexible(
                  child: Container(
                    height: 100.0,
                    color: const Color.fromARGB(255, 255, 238, 0),
                    child: const Text(
                      "Flexible takes up the remaining space but can shrink if needed.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Icon(Icons.sentiment_very_satisfied),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Expanded(
                  child: Container(
                    height: 100.0,
                    color: const Color.fromARGB(255, 255, 238, 0),
                    child: const Text(
                      "Expanded forces the widget to take up all the remaining space.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Icon(Icons.sentiment_very_satisfied),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
