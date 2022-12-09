import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osusdev/controller.dart';
import 'package:osusdev/settings.dart';

import 'categories.dart';
import 'home.dart';
import 'notification.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("OSUSDEV"),
        centerTitle: true,
      ),
      body: Obx(
        () => SafeArea(
          child: IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              HomeScreen(),
              CategoriesScreen(),
              SettingsScreen(),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'OSUSDEV',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                controller.changeScreen(0);
                Noti.showBigTextNotification(
                    title: 'Home Screen',
                    body: 'You are in the home screen',
                    fln: controller.flutterLocalNotificationsPlugin);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Categories'),
              onTap: () {
                controller.changeScreen(1);
                Noti.showBigTextNotification(
                    title: 'Categories Screen',
                    body: 'You are in the categories screen',
                    fln: controller.flutterLocalNotificationsPlugin);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                controller.changeScreen(2);
                Noti.showBigTextNotification(
                    title: 'Settings Screen',
                    body: 'You are in the settings screen',
                    fln: controller.flutterLocalNotificationsPlugin);
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
