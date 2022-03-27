import 'package:get/get.dart';

class PersonController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['Vei','Zio']);
  }
}