import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networking/detail_home_page.dart';
import 'my_home_page.dart'; // Import file MyHomePage Anda

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()), // Halaman utama
        GetPage(name: '/details', page: () => DetailsPage()), // Halaman detail
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
