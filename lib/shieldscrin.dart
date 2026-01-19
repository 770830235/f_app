import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class Sshieldscrin extends StatefulWidget {
  final List<Map<String, String>> attempts;

  const Sshieldscrin({super.key, required this.attempts});

  @override
  State<Sshieldscrin> createState() => _SshieldscrinState();
}

class _SshieldscrinState extends State<Sshieldscrin> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 77, 50, 230),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("imgs/images (5).jpeg"),
          ),
          const SizedBox(height: 10),
          Text(
            'تكاليف سوفت'.tr,
            style: const TextStyle(fontSize: 50, decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
