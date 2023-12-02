import 'package:dio/dio.dart';
import 'package:e_commerce/models/products/product_details_model.dart';

class GetProductDataRepo {
  final dio = Dio();
  // int id=44;
  Future<ProductDetailModel> getProductsData({required int productID}) async {
    final response = await dio.get('https://student.valuxapps.com/api/products/$productID');
    return ProductDetailModel.fromJson(response.data);
  }
}
main()async{
  var r= await GetProductDataRepo().getProductsData(productID: 88);
  print(r.data.description);
}