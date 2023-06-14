import 'dart:convert';

import 'package:marketplace_app/domain/product/sub_category_model.dart';

List<EndCategory> addEndCategoryListFromJson(String str)
=> List<EndCategory>.from(json.decode(str)['data'].map((endCategory)
=> EndCategory.fromJson(endCategory)));

class EndCategory {
  int id;
  String name ;
  String slug ;
  bool active ;
  SubCategory subCategory ;

  EndCategory({
    required this.id,
    required this.name,
    required this.slug,
    required this.active ,
    required this.subCategory
  });

  factory EndCategory.fromJson(Map<String, dynamic> data) => EndCategory(
      id: data['id'],
      name: data['attributes']['name'],
      slug: data['attributes']['slug'],
      active: data['attributes']['active'],
      subCategory: SubCategory.fromJson(data['attributes']['sub_category']['data'])
  );



}