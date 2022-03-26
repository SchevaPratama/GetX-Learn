import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Episode73/obx/controller/personController.dart';
import 'package:getx_practice/Episode73/obx/model/person.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personController = PersonController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Practice'),
        ),
        body: Center(
          child: Obx(
            () {
              return Text(
                'Name: ${personController.person.value.nama}',
                style: TextStyle(
                  fontSize: 35,
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            personController.upperWord();
          },
          child: Icon(Icons.text_format_outlined),
        ),
      ),
    );
  }
}
