import 'package:dio/dio.dart';
import 'package:e_commerce/models/banner_flash_model.dart';

class GetHomePageDataRepo {
  final dio = Dio();
  // int id=44;
  Future<BannerAndFlashModel> getBannerAndProductsData() async {
    final response = await dio.get('https://student.valuxapps.com/api/home');
    return BannerAndFlashModel.fromJson(response.data);
  }
//   Future<CategoryDetailsModel> getProductsData({required int id}) async {
//     final response = await dio.get('https://student.valuxapps.com/api/home');
//     return CategoryDetailsModel.fromJson(response.data);
//   }
}
// main()async{
//   var r= await GetHomePageDataRepo().getBannerAndProductsData();
//   print(r.data.products[0].description);
// }