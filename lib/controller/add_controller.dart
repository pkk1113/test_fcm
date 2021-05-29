import 'package:get/get.dart';

class AddController extends GetxController {
  RxInt count = 0.obs;

  void add() {
    count.value += 1;
    Get.snackbar('증가', '1 증가했습니다.');
  }
}
