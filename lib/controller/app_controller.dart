import 'package:get/get.dart';

enum AppBottomNavigationBarItemName {
  Add,
  Remove,
  Member,
}

class AppController extends GetxController {
  static AppController get to => Get.find();

  RxInt itemIndex = AppBottomNavigationBarItemName.Add.index.obs;

  void changeItem(int index) {
    itemIndex.value = index;
  }
}
