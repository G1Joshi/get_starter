import 'package:get/get.dart';

import 'data/network/network_requester.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkRequester(), permanent: true);
  }
}
