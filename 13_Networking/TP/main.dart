import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Pastikan GetX diimpor dengan benar

/// Controller untuk mengelola state counter
class CounterController extends GetxController {
  // Variabel untuk menyimpan nilai counter dengan reaktifitas
  RxInt counter = 0.obs;

  // Fungsi untuk menambah nilai counter
  void increment() {
    counter++;
  }

  // Fungsi untuk mereset nilai counter
  void reset() {
    counter.value = 0;
  }
}

class HomePage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(
        child: Obx(() {
          // Menampilkan nilai counter secara reaktif
          return Text(
            "${controller.counter}",
            style: const TextStyle(fontSize: 48),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Menambah nilai counter
              controller.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Mereset nilai counter
              controller.reset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    GetMaterialApp( // Gunakan GetMaterialApp untuk mendukung GetX
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
