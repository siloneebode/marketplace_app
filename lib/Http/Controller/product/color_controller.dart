import 'package:get/get.dart';
import 'package:marketplace_app/domain/color/repository/color_repository.dart';
import 'package:marketplace_app/infrastructure/base_controller.dart';
import '../../../domain/color/entity/custom_color.dart';
import '../../../infrastructure/network/response/api_status.dart';

class ColorController extends BaseController {

  final _api = ColorRepository();

  final rxRequestStatus = Status.LOADING.obs ;
  final RxList<CustomColor> colorList = List<CustomColor>.empty(growable: true).obs ;
  final RxList selectedColorList = List<CustomColor>.empty(growable: true).obs ;
  final RxString error = ''.obs ;


  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setColor(List<CustomColor> _value) => colorList.assignAll(_value) ;
  void setError(String _value) => error.value = _value ;

  @override
  void getData () {
    _api.colorListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setColor(value);
      colorList.assignAll(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  @override
  void reload() {
    setRxRequestStatus(Status.LOADING);
    getData();
    update();
  }


}