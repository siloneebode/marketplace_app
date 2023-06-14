import 'dart:convert';

import 'package:hive/hive.dart';

List<CustomSize> addSizeListFromJson(String str)
=> List<CustomSize>.from(json.decode(str)['data'].map((data)
=> CustomSize.fromJson(data)));

class CustomSize extends HiveObject {

  int id;
  String size ;

  CustomSize({required this.id , required this.size});

  factory CustomSize.fromJson(Map<String, dynamic> data) => CustomSize(
      id: data['id'],
      size: data['attributes']['size']
  );
}