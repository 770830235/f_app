import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';
import 'app_routes.dart';
import 'app_translations.dart';
import 'locale_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(LocaleController(), permanent: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تكاليف سوفت'.tr,
      translations: AppTranslations(),
      locale: localeController.locale,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
