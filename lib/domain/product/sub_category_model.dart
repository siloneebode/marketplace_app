import 'dart:convert';

import 'category_model.dart';

List<SubCategory> addSubCategoryListFromJson(String str)
=> List<SubCategory>.from(json.decode(str)['data'].map((subCategory)
=> SubCategory.fromJson(subCategory)));

class SubCategory {
  int id;
  String name ;
  String slug ;
  bool active ;
  Category category ;

  SubCategory({
    required this.id,
    required this.name,
    required this.slug,
    required this.active ,
    required this.category});

  factory SubCategory.fromJson(Map<String, dynamic> data) => SubCategory(
      id: data['id'],
      name: data['attributes']['name'],
      slug: data['attributes']['slug'],
      active: data['attributes']['active'],
      category: Category.fromJson(data['attributes']['category']['data'])
  );


}