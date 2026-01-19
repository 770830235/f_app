import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'locale_controller.dart';

class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();

    return IconButton(
      tooltip: localeController.isArabic ? 'English'.tr : 'العربية'.tr,
      icon: const Icon(Icons.language),
      onPressed: localeController.toggleLanguage,
    );
  }
}
