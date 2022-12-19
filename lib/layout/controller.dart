import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:osusdev/notification.dart';

class Controller extends GetxController {
  RxInt currentIndex = 0.obs;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void onInit() {
    // TODO: implement onInit
    Noti.initialize(flutterLocalNotificationsPlugin);
    super.onInit();
  }

  void changeScreen(int index) {
    currentIndex.value = index;
  }
}
