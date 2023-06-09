import 'package:get/get.dart';

import '../../../Domain/product/custom_color.dart';


class CreateProductController extends GetxController {
  var price = 0.0.obs ;
  var category = 0.obs ;
  var color = [].obs ;
  var size = ''.obs ;
  var description = ''.obs ;
  var title = ''.obs ;
  var images = [].obs;

  var isVisiblesize = true.obs ;

  void setPrice (double value) {
    price.value = value;
    update();
  }

  void setCategory (int value) {
    category.value = value;
  }

  void setColor (List<CustomColor> value) {
    color.value = value;
  }

  void setSize (String value) {
    size.value = value;
  }

  void setDescription (String value) {
    description.value = value;
  }

  void setTitle (String value) {
    description.value = value;
  }


}