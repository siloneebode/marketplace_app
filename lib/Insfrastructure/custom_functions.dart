import 'package:get/get.dart';
import 'package:http/http.dart' as http;

var client = http.Client();


Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

  Future<void>? goTo(page) {
  Get.to(() => page,
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 500),
  );
  return null;
}

Future<void>? goToLikeBottomModal(page) {
  Get.to(page,
    transition: Transition.downToUp,
    duration: const Duration(milliseconds: 500),
  );
  return null;
}

 Future<dynamic> fetchData(String url) async {
  var response = await client.get(Uri.parse(url), headers: headers);
  return response;
}

