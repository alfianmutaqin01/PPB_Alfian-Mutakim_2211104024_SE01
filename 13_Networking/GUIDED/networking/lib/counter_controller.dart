import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // State yang reaktif
  void increment() => count++;

  void decrement() => count--;

  void getSnackBar() {
    Get.snackbar(
      'Ini snackbar',
      'Ini pesan dari snackbar',
    );
  }

  void getBottomSheet() {
    Get.bottomSheet(Container(
      child: Text('Ini Bottom Sheet'),
    ));
  }
}