import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:marketplace_app/Http/Controller/custom_base_controller.dart';
import 'package:marketplace_app/Http/services/local_service/local_color_service.dart';
import 'package:marketplace_app/Insfrastructure/base_client.dart';
import '../../../Insfrastructure/constants.dart';
import '../../../domain/product/custom_color.dart';

class ColorController extends GetxController with CustomBaseController {

  RxList<CustomColor> colorList = List<CustomColor>.empty(growable: true).obs ;
  RxList<CustomColor> colorListSelected = List<CustomColor>.empty(growable: true).obs ;
  static const TIME_OUT_DURATION = 15;
  final LocalColorService _localService = LocalColorService();
  var client = http.Client();
  var url = '$baseUrl/api/colors/';

  @override
  void onInit() async {
    //await _localService.init('custom_color');
    super.onInit();
  }

  Future getColors () async {

    var response = await CustomClient().get(url);
    if (response != null) {
      // on affiche le résultat de l'API
      colorList.assignAll(addColorListFromJson(response.toString()));
      // on sauvegarde les données de l'API dans le local
      //_localService.addData(data: addColorListFromJson(response));
      return colorList;
    }

  }

  void updatedColor (CustomColor color) {
    if(colorListSelected.contains(color)){
      colorListSelected.remove(color);
    }else {
      colorListSelected.add(color);
    }
  }
}