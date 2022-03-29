import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode75/controller/counterController.dart';
import 'package:getx_practice/Episode76/controller/myController.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: WorkersPage(),
    );
  }
}

class WorkersPage extends StatelessWidget {
  const WorkersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myC = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Practice'),
        actions: [
          IconButton(
            onPressed: () {
              myC.reset();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Something Happen: ${myC.count.value}x',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: ((value) => myC.change()),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
    );
  }
}
