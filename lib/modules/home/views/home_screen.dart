import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/utills/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(productListScreen),
          child: const Text('Go to Product List'),
        ),
      ),
    );
  }
}
