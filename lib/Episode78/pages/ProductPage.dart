import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/route_named.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Product Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.product + '/1?name=Jaket&size=L');
                },
                child: Text('Product ID 1')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.product + '/2?name=Sepatu&size=43');
                },
                child: Text('Product ID 2')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.product + '/3?name=Tas Laptop&size=13 Inch');
                },
                child: Text('Product ID 3')),
          ],
        ),
      ),
    );
  }
}
