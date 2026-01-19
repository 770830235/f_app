import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user.dart';
import 'app_routes.dart';
import 'language_button.dart';

class LoginController extends GetxController {
  final emailC = TextEditingController();
  final passC = TextEditingController();

  // @override
  // void onClose() {
  //   emailC.dispose();
  //   passC.dispose();
  //   super.onClose();
  // }

  void handleLogin() {
    if (!UserStore.hasAnyAccount()) {
      Get.snackbar(
        'تسجيل الدخول'.tr,
        'لا يوجد حساب. قم بإنشاء حساب جديد أولاً'.tr,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    final ok = UserStore.login(
      email: emailC.text,
      password: passC.text,
    );

    if (ok) {
      Get.offAllNamed(
        AppRoutes.home,
        arguments: {
          'username': '',
          'attempts': <Map<String, String>>[],
        },
      );
    } else {
      Get.snackbar(
        'تسجيل الدخول'.tr,
        'البريد غير موجود أو كلمة المرور غير صحيحة'.tr,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'.tr),
        actions: const [LanguageToggleButton()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            TextField(
              controller: controller.emailC,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني'.tr,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: controller.passC,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'كلمة المرور'.tr,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.handleLogin,
                child: Text('تسجيل الدخول'.tr),
              ),
            ),
            const SizedBox(height: 15),

            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.register),
              child: Text('إنشاء حساب جديد'.tr),
            ),
          ],
        ),
      ),
    );
  }
}