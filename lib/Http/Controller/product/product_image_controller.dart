import 'package:get/get.dart';
import 'package:photo_manager/photo_manager.dart';

class ProductImageController extends GetxController {

  var imageSelected = [].obs ;

  void updateMediaSelected(AssetEntity assetEntity) {
    if (imageSelected.contains(assetEntity)){
      imageSelected.remove(assetEntity);
    } else {
      imageSelected.add(assetEntity);
    }
    update();
  }

}