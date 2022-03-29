import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  void change() {
    count++;
  }

  void reset() {
    count.value = 0;
  }

  @override
  void onInit() {
    print('onInit');

    // Dijalankan setiap variable berubah (Tunggal)
    // ever(
    //   count,
    //   (_) => print('Jalankan suatu fungsi'),
    // );

    // Dijalankan setiap variable berubah (Jamak)
    // everAll(
    //   [count,data],
    //   (_) => print('Jalankan suatu fungsi'),
    // );

    // Dijalankan satu kali variable berubah
    // once(
    //   count,
    //   (_) => print('Jalankan Sekali'),
    // );

    // Dijalan saat variable berubah setelah waktu yang ditentukan (Biasanya digunakan untuk searching)
    // debounce(
    //   count,
    //   (_) => print('Jalankan sesuatu setelah waktu yang ditentukan'),
    //   time: Duration(seconds: 3),
    // );

    // Dijalankan saat variable berubah selama interval waktu yang ditentukan (Biasanya digunakan untuk security)
    interval(
      count,
      (_) => print('Jalankan fungsi selama waktu interval yang ditentukan'),
      time: Duration(seconds: 3),
    );

    super.onInit();
  }
}
