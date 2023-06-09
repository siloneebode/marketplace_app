import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:marketplace_app/Insfrastructure/app_exception.dart';

class CustomClient {

  static const TIME_OUT_DURATION = 15;
  var dio = Dio();

  // GET METHOD
    Future<dynamic> get(String url) async {
     try {
       var response = await http.Client().get(Uri.parse(url))
           .timeout(const Duration(seconds: TIME_OUT_DURATION));
       return response.body;
     } on SocketException {
       throw FetchDataException(message: 'Pas de connexion internet');
     } on TimeoutException {
       throw ToTimeException(message: "La demande a pris trop de temps pour répondre.");
     } catch (e) {
       throw UnknownException(message: e.toString());
     }
   }

}