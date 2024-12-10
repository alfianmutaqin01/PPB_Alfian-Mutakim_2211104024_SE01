import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networking/counter_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                controller.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/details');
                },
                child: Text('Go to Detail Page')),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: controller.getSnackBar,
            tooltip: 'Get Snackbar',
            child: const Icon(Icons.message),
          ),
          FloatingActionButton(
            onPressed: controller.getBottomSheet,
            tooltip: 'Get BottomSheet',
            child: const Icon(Icons.message),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
