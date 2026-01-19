import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'language_button.dart';

class UsageSliderScreen extends StatefulWidget {
  const UsageSliderScreen({super.key});

  @override
  State<UsageSliderScreen> createState() => _UsageSliderScreenState();
}

class _UsageSliderScreenState extends State<UsageSliderScreen> {
  double _kwh = 250;

  static const double _pricePerKwh = 0.12;

  double get _estimatedCost => _kwh * _pricePerKwh;

  String get _usageLabel {
    if (_kwh < 200) return 'منخفض'.tr;
    if (_kwh < 450) return 'متوسط'.tr;
    return 'مرتفع'.tr;
  }

  IconData get _usageIcon {
    if (_kwh < 200) return Icons.bolt_outlined;
    if (_kwh < 450) return Icons.bolt;
    return Icons.bolt_rounded;
  }

  double get _progress => (_kwh / 800).clamp(0, 1);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('لوحة استهلاك الكهرباء'.tr),
        centerTitle: true,
        actions: const [LanguageToggleButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _HeaderCard(
              title: 'استهلاكك هذا الشهر'.tr,
              subtitle: 'حرّك السلايدر لتحديد الاستهلاك المتوقع'.tr,
              icon: Icons.home_outlined,
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: cs.outlineVariant),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(_usageIcon, color: cs.primary),
                        const SizedBox(width: 8),
                        Text(
                          '${'data'.tr}: ${_kwh.toStringAsFixed(0)} kWh',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Chip(label: Text(_usageLabel)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: _progress,
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'تقدير التكلفة: \$${_estimatedCost.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: cs.secondary,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Slider(
                      value: _kwh,
                      min: 0,
                      max: 800,
                      divisions: 80,
                      label: '${_kwh.toStringAsFixed(0)} kWh',
                      onChanged: (v) => setState(() => _kwh = v),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        _InfoPill(
                          title: 'السعر لكل kWh'.tr,
                          value: '\$${_pricePerKwh.toStringAsFixed(2)}',
                          icon: Icons.attach_money,
                        ),
                        _InfoPill(
                          title: 'نسبة الاستهلاك'.tr,
                          value: '${(_progress * 100).toStringAsFixed(0)}%',
                          icon: Icons.speed,
                        ),
                        _InfoPill(
                          title: 'نصيحة'.tr,
                          value: _kwh > 450
                              ? 'قلّل استخدام السخان/المكيف'.tr
                              : 'ممتاز، استهلاكك ضمن الطبيعي'.tr,
                          icon: Icons.tips_and_updates_outlined,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () {
                Get.snackbar(
                  'لوحة استهلاك الكهرباء'.tr,
                  'تم حفظ التقدير: ${_kwh.toStringAsFixed(0)} kWh بتكلفة \$${_estimatedCost.toStringAsFixed(2)}',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              icon: const Icon(Icons.save_outlined),
              label: Text('حفظ التقدير'.tr),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () => setState(() => _kwh = 250),
              icon: const Icon(Icons.refresh),
              label: Text('إرجاع للقيمة الافتراضية'.tr),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _HeaderCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      color: cs.primaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: cs.primary,
              foregroundColor: cs.onPrimary,
              child: Icon(icon),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: cs.onPrimaryContainer,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: cs.onPrimaryContainer)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoPill extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _InfoPill({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: cs.surfaceVariant,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 2),
              Text(value),
            ],
          ),
        ],
      ),
    );
  }
}

// alias used in routes
class ElectricityUsageDashboard extends UsageSliderScreen {
  const ElectricityUsageDashboard({super.key});
}
