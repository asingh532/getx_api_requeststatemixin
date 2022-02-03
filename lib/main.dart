import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/modules/product/bindings/product_binding.dart';
import 'package:getx_api_requeststatemixin/modules/product/views/product_list_screen.dart';
import 'package:getx_api_requeststatemixin/utills/app_constants.dart';

import 'modules/home/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Api Request using State Mixin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      defaultTransition: Transition.cupertino,
      initialRoute: homeScreen,
      getPages: [
        GetPage(
          name: homeScreen,
          page: ()=>const HomeScreen(),
        ),
        GetPage(
          name: productListScreen,
          binding: ProductBinding(),
          page: () => const ProductListScreen(),
        ),
      ],
    );
  }
}
