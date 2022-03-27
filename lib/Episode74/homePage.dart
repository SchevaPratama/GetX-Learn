import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode74/controller/personController.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<PersonController>(
                id: 'Zio',
                init: PersonController(),
                builder: (controller) {
                  return Text(
                    'Zio: ${controller.count}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              GetBuilder<PersonController>(
                id: 'Vei',
                init: PersonController(),
                builder: (controller) {
                  return Text(
                    'Vei: ${controller.count}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              GetBuilder<PersonController>(
                id: 'Scheva',
                init: PersonController(),
                builder: (controller) {
                  return Text(
                    'Scheva: ${controller.count}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<PersonController>().increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
