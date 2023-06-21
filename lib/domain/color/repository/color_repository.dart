import 'package:marketplace_app/domain/color/entity/custom_color.dart';
import '../../../infrastructure/network/api_endpoints.dart';
import '../../../infrastructure/network/service/network_api_services.dart';

class ColorRepository {
    final _apiService = NetworkApiServices();

    Future<List<CustomColor>> colorListApi () async {
      dynamic response = await _apiService.getApi(AppEndpoints.colorsApi);
      return addColorListFromJson(response);
    }
}