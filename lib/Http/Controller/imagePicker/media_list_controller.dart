

import 'package:get/get.dart';
import 'package:photo_manager/photo_manager.dart';

class MediaListController extends GetxController {

  var mediaList = [].obs ;
  var selectedList = [].obs ;
  var isLoading = false.obs ;

  @override
  void onInit() {
    selectedList.clear();
    super.onInit();
  }

  @override
  void onReady() {
    selectedList.clear();
    super.onReady();
  }

  void updateMediaList(List assetEntity) {
    for(AssetEntity asset in assetEntity){
      if (asset.type == AssetType.image){
        mediaList.add(asset);
      }
    };
    update();
  }

  void updateSelectedList(AssetEntity assetEntity) {
    selectedList.contains(assetEntity) ? selectedList.remove(assetEntity) : selectedList.add(assetEntity);
    update();
  }

  void updateIsLoading() {
    isLoading.value = !isLoading.value;
    update();
  }
}