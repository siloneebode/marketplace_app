
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ProductModel {

   String? title ;
   double? price ;
   String? description ;
   String? category ;
   List? images ;
   List? colors ;
   String? sizes ;
   bool? isSold ;
   bool? State ;

  ProductModel({
     this.title,
     this.price,
     this.description,
     this.category,
     this.images,
     this.colors,
     this.sizes,
     this.isSold,
     this.State
  });

}