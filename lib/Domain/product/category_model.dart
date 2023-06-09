import 'dart:convert';

List<Category> addColorListFromJson(String str)
=> List<Category>.from(json.decode(str)['data'].map((category)
=> Category.fromJson(category)));

class Category {
  int id;
  String name ;
  String slug ;
  bool active ;

  Category({required this.id, required this.name, required this.slug, required this.active});

  factory Category.fromJson(Map<String, dynamic> data) => Category(
    id: data['id'],
    name: data['attributes']['name'],
    slug: data['attributes']['slug'],
    active: data['attributes']['active']
  );
}