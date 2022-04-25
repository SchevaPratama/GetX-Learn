import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/homepage');
              },
              child: Text("Previous Page"),
            ),
          ],
        ),
      ),
    );
  }
}
