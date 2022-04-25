import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode75/controller/counterController.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Practice'),
        actions: [
          IconButton(
            onPressed: () {
              Get.off(() => OtherPage());
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: GetBuilder<CounterContoller>(
          // initState: (state) => print('Init state'),
          // didChangeDependencies: (state) => print('Did change depedencies'),
          // DIdupdatewiget rarely used caused we have to use statefull to make this function works
          // didUpdateWidget: (oldWidget, state) => print('Did update widget'),
          // dispose: (state) => print('Dispose'),
          init: CounterContoller(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller.numberC,
                decoration: new InputDecoration.collapsed(hintText: 'Test TextField'),
              ),
            );
            // Text(
            //   'Angka: ${controller.count}',
            //   style: TextStyle(
            //     fontSize: 35,
            //   ),
            // );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterContoller>().increment();
        },
        child: Icon(Icons.add),
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
