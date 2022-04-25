import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode77/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Previous Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/page-3');
              },
              child: Text("Next Page"),
            )
          ],
        ),
      ),
    );
  }
}
