import 'package:http/http.dart' as http;

import '../../../Insfrastructure/constants.dart';

class RemoteColorService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/colors/';

  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };


  Future<dynamic> getColorList() async {
    var response = await client.get(Uri.parse(remoteUrl), headers: headers);
    return response ;
  }
}