import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/controller/remove_controller.dart';

class RemovePage extends GetView<RemoveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.3),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    '${controller.count.value}',
                    style: TextStyle(fontSize: 50.0),
                  )),
              ElevatedButton(onPressed: controller.remove, child: Text('감소')),
            ],
          ),
        ),
      ),
    );
  }
}
