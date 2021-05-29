import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/controller/app_controller.dart';

class AppPage extends GetView<AppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FCM 테스트 앱'), centerTitle: true),
      body: Container(),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.itemIndex.value,
            onTap: controller.changeItem,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add), label: '더하기'),
              BottomNavigationBarItem(icon: Icon(Icons.remove), label: '빼기'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '나'),
            ],
          )),
    );
  }
}
