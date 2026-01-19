import 'package:get/get.dart';

import 'app_routes.dart';

import 'shieldscrin.dart';
import 'login2.dart';
import 'register_page.dart';
import 'home.dart';
import 'profile.dart';
import 'profile2.dart';
import 'h2.dart';
import 'H3.dart';
import 'sulder.dart';
/*   class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'.tr),
        actions: const [LanguageToggleButton()],
      ),
      body: SingleChildScrollView( // يمنع overflow
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
} */
class AppPages {
  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.splash,
      page: () => Sshieldscrin(attempts: <Map<String, String>>[]),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder(() {
       Get.lazyPut<LoginController>(
          () => LoginController(),
          fenix: true,
        );
      }),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () {
        final args = Get.arguments;
        final username = (args is Map && args['username'] is String)
            ? args['username'] as String
            : '';
        final attempts = (args is Map && args['attempts'] is List)
            ? (args['attempts'] as List).cast<Map<String, String>>()
            : <Map<String, String>>[];

        return Myapp(username: username, attempts: attempts);
      },
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () {
        final args = Get.arguments;
        final username = (args is Map && args['username'] is String)
            ? args['username'] as String
            : '';
        return ProfileScreen(username: username, attempts: const []);
      },
    ),
    GetPage(
      name: AppRoutes.profile2,
      page: () {
        final args = Get.arguments;
        final name = (args is Map && args['name'] is String) ? args['name'] as String : '';
        final email = (args is Map && args['email'] is String) ? args['email'] as String : '';
        return ProfilePage(name: name, email: email);
      },
    ),
    GetPage(name: AppRoutes.h2, page: () => H2()),
    GetPage(name: AppRoutes.h3, page: () => H3(studint: const [])),
    GetPage(name: AppRoutes.sulder, page: () => const ElectricityUsageDashboard()),
  ];
}
