import 'package:dio/dio.dart';
import 'package:e_commerce/models/categories/categories_details_model.dart';
import 'package:e_commerce/models/categories/categories_types_model.dart';

class GetCategoryRepo {
  final dio = Dio();
  // int id=44;
  Future<CategoryTypeModel> getCategoryData() async {
    final response = await dio.get('https://student.valuxapps.com/api/categories');
    return CategoryTypeModel.fromJson(response.data);
  }
  Future<CategoryDetailsModel> getCategoryDetailsData({required int id}) async {
    final response = await dio.get('https://student.valuxapps.com/api/categories/$id');
    return CategoryDetailsModel.fromJson(response.data);
  }
}
// main()async{
//   var r= await GetCategoryRepo().getDataCategory();
//  var g= await r.data.data[0];
//   print(g.id);
//   var test=await GetCategoryRepo().getDataCategoryDetails(id: 40);
//   print(test.data.data[0].price);
// }