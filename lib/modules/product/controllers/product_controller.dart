import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/modules/product/models/product_model.dart';
import 'package:getx_api_requeststatemixin/network/api_provider.dart';

class ProductController extends GetxController with StateMixin<List<ProductModel>>{


  @override
  void onInit() {
    super.onInit();
    getProductList();
  }


  void getProductList(){
    try{
      change(null,status: RxStatus.loading());

      ApiProvider().getProductData().then((result) {
        change(result,status: RxStatus.success());
      },onError: (error){
        change(null,status: RxStatus.error(error.toString()));
      });
      
    }catch(e){
      change(null,status: RxStatus.error(e.toString()));
    }
  }

}