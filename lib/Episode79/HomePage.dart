import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "It's Title",
              "It's Message",
              animationDuration: Duration(milliseconds: 300),
              duration: Duration(seconds: 2),
              backgroundColor: Colors.amber,
              borderWidth: 3,
              borderColor: Colors.black,
            );
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
