import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterContoller = Get.put(CounterController());
    return Obx(
      () {
        return MaterialApp(
          theme: counterContoller.isDark.value == true
              ? ThemeData.dark()
              : ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(
              title: Text('GetX Practice'),
            ),
            body: Center(
              child: Text(
                'Number ${counterContoller.count}',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counterContoller.increment();
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    counterContoller.reset();
                  },
                  child: Icon(Icons.exposure_zero),
                ),
                FloatingActionButton(
                  onPressed: () {
                    counterContoller.decrement();
                  },
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    counterContoller.changeTheme();
                  },
                  child: Icon(Icons.change_circle_rounded),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}