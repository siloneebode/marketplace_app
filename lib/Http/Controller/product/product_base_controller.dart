
import 'package:get/get.dart';

class ProductBaseController extends GetxController {
  RxList<dynamic> dynamicList = List<dynamic>.empty(growable: true).obs ;
  late dynamic object ;

  @override
  void onInit() {
    var data = Get.arguments;
    if (data != null) {
      object = data ;
    }
    super.onInit();
  }


}