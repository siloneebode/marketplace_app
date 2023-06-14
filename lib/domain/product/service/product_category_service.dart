import 'package:http/http.dart' as http;
import '../../../Insfrastructure/constants.dart';

class ProductCategoryService {
  var client = http.Client();

  var remoteUrl = '$baseUrl/api/categories/';

  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };


  Future<dynamic> getCategoryList() async {
    var response = await client.get(Uri.parse(remoteUrl), headers: headers);
    return response ;
  }
}