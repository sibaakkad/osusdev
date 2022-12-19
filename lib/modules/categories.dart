import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://myguideksa.com/images/1.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/2.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/3.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/4.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/5.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/6.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/7.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/8.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://myguideksa.com/images/9.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://myguideksa.com/images/9.png',
                    width: Get.width / 3,
                    fit: BoxFit.contain,
                  ),
                  const VerticalDivider(
                    color: Color.fromARGB(255, 248, 0, 0),
                    width: 100,
                    thickness: 15,
                    indent: 20,
                    endIndent: 0,
                  ),
                  Image.network(
                    width: Get.width / 3,
                    'https://myguideksa.com/images/5.png',
                    // width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
