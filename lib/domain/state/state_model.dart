import 'dart:convert';

import 'package:hive/hive.dart';

List<ProductState> addCategoryListFromJson(String str)
=> List<ProductState>.from(json.decode(str)['data'].map((data)
=> ProductState.fromJson(data)));

class ProductState extends HiveObject {
  int id ;
  String title ;
  String content ;

  ProductState({required this.id , required this.title , required this.content });

  factory ProductState.fromJson(Map<String, dynamic> data) => ProductState(
      id: data['id'],
      title: data['attributes']['title'],
      content: data['attributes']['content']
  );
}