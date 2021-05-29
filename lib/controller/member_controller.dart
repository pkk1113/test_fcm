import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/pages/app_page/member_page.dart';

class MemberController extends GetxController {
  RxBool shouldShowSnackbarLongTime = false.obs;

  void setShouldShowSnackbarLongTime(bool value) => shouldShowSnackbarLongTime.value = value;

  Future<void> showSnackbar() async {
    await Future.delayed(Duration(milliseconds: 5000));
    Get.snackbar('snackbar', 'snackbar',
        backgroundColor: Colors.white,
        duration: Duration(seconds: shouldShowSnackbarLongTime.value ? 10 : 2));
  }

  void showDialog() {
    Get.dialog(MemberPageTestDialog());
  }

  void showBottomSheet() {
    Get.bottomSheet(MemberPageTestBottomsheet());
  }
}
