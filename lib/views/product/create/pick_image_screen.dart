import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_app/routes/app_page.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'package:marketplace_app/views/product/create/product_image_screen.dart';
import 'package:photo_manager/photo_manager.dart';
import '../../../Http/Controller/imagePicker/media_list_controller.dart';

class PickImageScreen extends StatelessWidget {
  final MediaListController mediaListController = Get.put(MediaListController());
  PickImageScreen({Key? key}) : super(key: key);

  Future _fetchImages() async {

    final PermissionState _ps = await PhotoManager.requestPermissionExtend();
    if (_ps.isAuth) {

      mediaListController.updateIsLoading();

      List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(onlyAll: true);

      List<AssetEntity> media = await albums[0].getAssetListPaged(
          page: 0, size: albums[0].assetCount);

      mediaListController.updateMediaList(media);
      mediaListController.updateIsLoading();
    } else {
      PhotoManager.openSetting();
    }
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<MediaListController>(
      initState: (_) {
        mediaListController.selectedList.clear();
        _fetchImages();
      },
        builder: (controller) {
          return  Scaffold(
              appBar: AppBar(
                  elevation: 1,
                  backgroundColor: Colors.white,
                  leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      mediaListController.selectedList.clear();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    "Choisi jusqu'a 10 images"
                  ),
                  actions: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 10),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                          size: 25,
                        ))
                    ,
                  ]
              ),

              body: mediaListController.isLoading.value ?
              const Center(child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 3,
              ),
              ) :
              WillPopScope(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3
                    ),
                    itemCount: mediaListController.mediaList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          mediaListController.updateSelectedList(mediaListController.mediaList[index]);

                        },
                        child: assetWidget(mediaListController.mediaList[index]),

                      );
                    },
                  )
                  , onWillPop: () async {
                    Navigator.pop(context);
                    mediaListController.selectedList.clear();
                    return true ;
                  }),
              bottomNavigationBar: BottomAppBar(
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child:  Obx(() => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mediaListController.selectedList.isEmpty ? Colors.grey.shade400 : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        fixedSize: const Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        mediaListController.selectedList.isEmpty ? null :
                            Get.offNamed(AppRoute.PRODUCT_IMAGES, arguments: mediaListController.selectedList);
                      },
                      child: const Text('Enregister',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                  )
              )
          );
        });
  }

   Widget assetWidget(AssetEntity assetEntity) {
     return Stack(
       children: [
         Obx(() => Positioned.fill(
             child: Opacity(
                 opacity: mediaListController.selectedList.contains(assetEntity) ? 0.3 : 1,
                 child: AssetEntityImage(
                   assetEntity,
                   isOriginal: false,
                   thumbnailSize: const ThumbnailSize(300, 300),
                   fit: BoxFit.cover,
                   errorBuilder: (BuildContext context, Object exception,
                       StackTrace? stackTrace) {
                     return const Center(
                         child: Icon(
                           Icons.error,
                           color: Colors.red,
                         )
                     );
                   },
                 )
             ))),
         Obx(() => Center(child:
         mediaListController.selectedList.contains(assetEntity) ?
         const Icon(Icons.check, color: Colors.black, size: 35, weight: 600,):
         Container(),)
         )
       ],);

   }
}
