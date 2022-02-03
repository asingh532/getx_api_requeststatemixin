import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/modules/product/controllers/product_controller.dart';

class ProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
  }
}