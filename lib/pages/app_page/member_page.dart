import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/controller/member_controller.dart';

class MemberPage extends GetView<MemberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.withOpacity(0.3),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: Get.focusScope!.unfocus,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '5초 후 Snackbar 나옴',
                  style: TextStyle(fontSize: 20.0),
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text('길게 보기: '),
                      Obx(() => Switch(
                            value: controller.shouldShowSnackbarLongTime.value,
                            onChanged: controller.setShouldShowSnackbarLongTime,
                          )),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: controller.showSnackbar, child: Text('스낵바')),
                ElevatedButton(onPressed: controller.showDialog, child: Text('다이어로그')),
                ElevatedButton(onPressed: controller.showBottomSheet, child: Text('바텀시트')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MemberPageTestDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('테스트 다이어로그'),
      actions: [TextButton(onPressed: Get.back, child: Text('취소'))],
    );
  }
}

class MemberPageTestBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('테스트 바텀 시트', style: TextStyle(fontSize: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [TextButton(onPressed: Get.back, child: Text('취소'))],
            )
          ],
        ),
      ),
    );
  }
}
