import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'language_button.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  const ProfileScreen({super.key, required this.username, required List<Map<String, String>> attempts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'.tr),
        centerTitle: true,
        actions: const [LanguageToggleButton()],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person, size: 64),
                  const SizedBox(height: 12),
                  Text(
                    'مرحباً'.tr + '، $username',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('هذه صفحة الملف الشخصي بعد تسجيل الدخول.'.tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
