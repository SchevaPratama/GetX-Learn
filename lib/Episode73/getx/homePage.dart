import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode73/getx/controller/personController.dart';

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
          child: GetX<PersonController>(
            init: PersonController(),
            builder: (controller) {
              return Text(
                'Name: ${controller.person.value.nama}',
                style: TextStyle(
                  fontSize: 35,
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<PersonController>().upperWord();
          },
          child: Icon(Icons.text_format_outlined),
        ),
      ),
    );
  }
}
