import 'dart:convert';

import 'package:hive/hive.dart';

part 'custom_color.g.dart';

List<CustomColor> addColorListFromJson(String str)
  => List<CustomColor>.from(json.decode(str)['data'].map((color)
  => CustomColor.fromJson(color)));

@HiveType(typeId: 1)
class CustomColor extends HiveObject {
  @HiveField(2)
  String color ;
  @HiveField(1)
  String name;
  @HiveField(0)
  int id ;

  CustomColor({
    required this.color,
    required this.name,
    required this.id
  });

  factory CustomColor.fromJson(Map<String,dynamic> data) => CustomColor(
    color: data['attributes']['color'],
    name: data['attributes']['name'],
    id: data['id'],
  );
}