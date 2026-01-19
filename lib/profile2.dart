import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'language_button.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String email;

  const ProfilePage({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? picked = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (picked == null) return;

      setState(() {
        _imageFile = File(picked.path);
      });
    } catch (e) {
      if (!mounted) return;
      Get.snackbar(
        'الملف الشخصي'.tr,
        ('تعذر اختيار الصورة:'.tr + ' $e'),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final avatar = _imageFile == null
        ? const CircleAvatar(
            radius: 55,
            child: Icon(Icons.person, size: 55),
          )
        : CircleAvatar(
            radius: 55,
            backgroundImage: FileImage(_imageFile!),
          );

    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'.tr),
        actions: const [LanguageToggleButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: avatar),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: _pickImageFromGallery,
              icon: const Icon(Icons.photo_library),
              label: Text('اختيار صورة من الجوال'.tr),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(Icons.badge),
                title: Text(widget.name.isEmpty ? '—' : widget.name),
                subtitle: Text('الاسم'.tr),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: Text(widget.email.isEmpty ? '—' : widget.email),
                subtitle: Text('البريد الإلكتروني'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
