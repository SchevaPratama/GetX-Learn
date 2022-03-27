import 'package:get/get.dart';
import 'package:getx_practice/Episode73/simple/model/person.dart';

class PersonController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['Vei','Zio']);
  }
}