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
        title: Text('GetX Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.dialog(AlertDialog(
              title: Text("It's Title"),
              content: Text("It's Content"),
            ));
            // Get.defaultDialog(
            //   barrierDismissible: false,
            //   title: "It's Title",
            //   middleText: "It's Description",
            //   cancel: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(Colors.red)),
            //     child: Text('Cancel'),
            //   ),
            //   actions: [
            //     ElevatedButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       child: Text('First Choice'),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       child: Text('Second Choice'),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       child: Text('Third Choice'),
            //     ),
            //   ],
            // );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
