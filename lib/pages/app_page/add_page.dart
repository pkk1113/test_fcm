import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/controller/add_controller.dart';

class AddPage extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.3),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    '${controller.count.value}',
                    style: TextStyle(fontSize: 50.0),
                  )),
              ElevatedButton(onPressed: controller.add, child: Text('증가')),
            ],
          ),
        ),
      ),
    );
  }
}
