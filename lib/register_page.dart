import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user.dart';
import 'app_routes.dart';
import 'language_button.dart';

class RegisterController extends GetxController {
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final passC = TextEditingController();

  @override
  void onClose() {
    nameC.dispose();
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }

  void handleRegister() {
    final name = nameC.text.trim();
    final email = emailC.text.trim();
    final pass = passC.text;

    if (name.isEmpty || email.isEmpty || pass.isEmpty) {
      Get.snackbar(
        'إنشاء حساب'.tr,
        'أكمل جميع الحقول'.tr,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    final ok = UserStore.register(name: name, email: email, password: pass);

    if (!ok) {
      Get.snackbar(
        'إنشاء حساب'.tr,
        'هذا البريد مستخدم مسبقاً'.tr,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.snackbar(
      'إنشاء حساب'.tr,
      'تم إنشاء الحساب بنجاح. سجّل دخول الآن'.tr,
      snackPosition: SnackPosition.BOTTOM,
    );

    Get.offAllNamed(AppRoutes.login);
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(
        title: Text('إنشاء حساب'.tr),
        actions: const [LanguageToggleButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: c.nameC,
              decoration: InputDecoration(
                labelText: 'الاسم الكامل'.tr,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: c.emailC,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني'.tr,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: c.passC,
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
                onPressed: c.handleRegister,
                child: Text('إنشاء الحساب'.tr),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Get.offAllNamed(AppRoutes.login),
              child: Text('العودة لتسجيل الدخول'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
