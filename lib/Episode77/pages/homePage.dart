import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
      initialRoute: '/',
      getPages: AppPages.pages
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/page-2');
              },
              child: Text("Next Page >>"),
            )
          ],
        ),
      ),
    );
  }
}
