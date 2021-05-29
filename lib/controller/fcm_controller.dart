import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class FcmController extends GetxController {
  static FcmController get to => Get.find();

  @override
  void onInit() async {
    await _initFCM();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> _initFCM() async {
    /// for iOS
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    /// for Android
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      'This channel is used for important notifications.', // description
      importance: Importance.max,
    );
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // for terminated
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      Get.snackbar('FCM', 'from Terminate state');
    }

    // for foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Get.snackbar('FCM', 'from Foreground state');
    });

    // for background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Get.snackbar('FCM', 'from Background state');
    });
  }
}
