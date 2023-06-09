import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/Insfrastructure/app_exception.dart';

class CustomBaseController {
  void handleError (error) {
    switch (error.runtimeType) {
      case BadRequestException:
      Get.snackbar('Oups une erreur est survenue', '',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          icon: const Icon(
              Icons.error_outline,
              color: Colors.white)
    );
      break;

     case UnAuthorizedException:
       Get.snackbar('Vous n\'avez pas l\'authorisation d\'accéder à cetter ressource', '',
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.red,
           colorText: Colors.white,
           icon: const Icon(
               Icons.error_outline,
               color: Colors.white)
       );
       break ;
     case ToTimeException:
       Get.snackbar('Oups une erreur est survenue', '',
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.red,
           colorText: Colors.white,
           icon: const Icon(
               Icons.error_outline,
               color: Colors.white)
       );
       break ;

      case NotFoundException :
        Get.snackbar('Oups une erreur est survenue', '',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            icon: const Icon(
                Icons.error_outline,
                color: Colors.white)
        );
        break ;

      case ServerException :
        Get.snackbar('Oups une erreur est survenue', '',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            icon: const Icon(
                Icons.error_outline,
                color: Colors.white)
        );
        break ;

      case UnknownException :
        Get.snackbar('Oups une erreur est survenue', '',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            icon: const Icon(
                Icons.error_outline,
                color: Colors.white)
        );
        break ;

    }
  }
}