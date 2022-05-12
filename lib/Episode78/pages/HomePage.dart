import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode78/pages/DetailPage.dart';
import 'package:getx_practice/Episode78/routes/appPage.dart';
import './ProductPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
      getPages: AppPage.pages,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/product');
            },
            child: Text("All Products")),
      ),
    );
  }
}
