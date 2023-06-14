import 'package:get/get.dart';
import '../../domain/Language/language_model.dart';

class LanguageController extends GetxController {
  List<Language> languages = [];
  bool hasSelectedProducts = false;

  void changeLanguage(Language language) {
    //selectedProduct.value = language;
    languages.removeWhere((element) => element.id == language.id);
    languages.add(language);
    hasSelectedProducts = languages.any((element) => element.active == true);
    update();
  }
}