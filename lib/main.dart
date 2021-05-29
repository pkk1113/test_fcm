import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_fcm/controller/add_controller.dart';
import 'package:test_fcm/controller/app_controller.dart';
import 'package:test_fcm/controller/fcm_controller.dart';
import 'package:test_fcm/controller/member_controller.dart';
import 'package:test_fcm/controller/remove_controller.dart';
import 'package:test_fcm/pages/app_page/app_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(FcmController());
        Get.put(AppController());
        Get.lazyPut(() => AddController());
        Get.lazyPut(() => RemoveController());
        Get.lazyPut(() => MemberController());
      }),
      home: AppPage(),
    );
  }
}
