import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Change Language'),
          onPressed: () {
            Get.locale!.languageCode == 'en'
                ? Get.updateLocale(const Locale('ar', 'EG'))
                : Get.updateLocale(const Locale('en', 'US'));
          },
        ),
      ),
    );
  }
}
