import 'package:get/get.dart';
import 'package:getx_api_requeststatemixin/modules/product/models/product_model.dart';

class ApiProvider extends GetConnect{
  final String appBaseUrl = "https://fakestoreapi.com/";

  ApiProvider() {
    httpClient.baseUrl = appBaseUrl;
    httpClient.defaultContentType = 'application/json';
  }

  Future<List<ProductModel>> getProductData() async{
    try{
      var url = "products";
      final response = await get(url);
      if(response.hasError){
        return Future.error(response.statusText!);
      }else{
        return productModelFromJson(response.bodyString!);
      }
    }catch(e){
      return Future.error(e.toString());
    }
  }
}