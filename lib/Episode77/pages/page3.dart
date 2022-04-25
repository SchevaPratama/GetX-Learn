import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
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
                Get.offNamed('/page-4');
              },
              child: Text("Next Page"),
            )
          ],
        ),
      ),
    );
  }
}