import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/modules/product/controllers/product_controller.dart';
import 'package:getx_api_requeststatemixin/modules/product/views/product_item_tile.dart';

class ProductListScreen extends GetView<ProductController> {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((resultList) {
        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: resultList!.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ProductItemTile(productModel: resultList[index]);
          },
        );
      }),
    );
  }
}
