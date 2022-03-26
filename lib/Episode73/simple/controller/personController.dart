import 'package:get/get.dart';
import 'package:getx_practice/Episode73/simple/model/person.dart';

class PersonController extends GetxController {
  var person = Person(nama: 'zordiev',umur: 18);

  void upperWord() {
    person.nama.toString().toUpperCase();
    update();
  }
}