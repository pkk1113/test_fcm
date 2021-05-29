import 'package:get/get.dart';

class RemoveController extends GetxController {
  RxInt count = 0.obs;

  void remove() => count.value -= 1;
}
