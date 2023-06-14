

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';

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

  Future getData (String endpoint, Function method) async {
    ///api/sub-categories?filter=[category][id][eq]=${categorySelected.id}/
    var Url = "$baseUrl/$endpoint";

    var response = await CustomClient().get(Url);
    if (response != null) {
      // on affiche le résultat de l'API
      dynamicList.assignAll(method(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return dynamicList;
    }

  }

  void changePage (dynamic object, StatelessWidget page) {
    Get.to(() => page,
        transition: Transition.rightToLeft,
        duration: const Duration(seconds: 300),
        arguments: object
    );
  }

}