import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CounterContoller extends GetxController {
  final numberC = TextEditingController();
  var count = 0;

  void increment() {
    count++;
    update();
  }
}