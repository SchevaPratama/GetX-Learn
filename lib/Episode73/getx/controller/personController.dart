import 'package:get/get.dart';
import 'package:getx_practice/Episode73/getx/model/person.dart';

class PersonController extends GetxController {
  var person = Person(nama: 'zordiev',umur: 18).obs;

  void upperWord() {
    person.update((_) {
      person.value.nama = person.value.nama.toString().toUpperCase();
    });
  }
}