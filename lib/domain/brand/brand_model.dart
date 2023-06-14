import 'dart:convert';

import 'package:hive/hive.dart';

List<Brand> addBrandListFromJson(String str)
=> List<Brand>.from(json.decode(str)['data'].map((brand)
=> Brand.fromJson(brand)));

class Brand extends HiveObject{

  int id ;
  String name  ;

  Brand({required this.id, required this.name});

  factory Brand.fromJson(Map<String, dynamic> data) => Brand(
  id: data['id'],
  name: data['attributes']['name']
  );
}