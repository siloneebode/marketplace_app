import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../app_exception.dart';
import 'base_api_service.dart';


class NetworkApiServices extends BaseApiServices {

  @override
  Future<dynamic> getApi(String url) async {

    dynamic jsonResponse ;
    try {
      final response = await http.get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));

      jsonResponse = castResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return jsonResponse ;

  }

  dynamic castResponse (http.Response response) {
    switch (response.statusCode) {
      case 200 :
        dynamic responseJson = response.body;
        return responseJson ;

      case 400:
        throw InvalidUrlException;

      default :
        throw FetchDataException('error');

    }
  }

  @override
  Future postApi(String url) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

}