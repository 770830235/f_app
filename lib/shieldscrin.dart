import 'dart:async';

import 'package:f_app/login.dart';
import 'package:f_app/login2.dart';
import 'package:f_app/profile.dart';
import 'package:f_app/register_page.dart';
import 'package:flutter/material.dart';

class Sshieldscrin extends StatefulWidget {
  List<Map<String,String>>attempts=[];
   Sshieldscrin({super.key,
   required this.attempts, required List<Map<String, String>> attemps});
  State<Sshieldscrin> createState() => _SshieldscrinState();
}

class _SshieldscrinState extends State<Sshieldscrin> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
      
        ),
        (route) => false,
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 77, 50, 230),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("imgs/images (5).jpeg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'تكاليف سوفت',
            style: TextStyle(fontSize: 50, decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
