import 'package:f_app/h2.dart';
import 'package:f_app/profile.dart';
import 'package:f_app/profile2.dart';
import 'package:f_app/profile2.dart';
import 'package:f_app/sulder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';
import 'language_button.dart';
import 'login.dart';

class Myapp extends StatefulWidget {
  List<Map<String, String>> attempts;

  Myapp({super.key, required this.username, required this.attempts});
  final String? username;
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var username;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double d = size.width * 0.02;
    double dd = size.width * 0.05;
    double ddd = size.height * 0.05;
    ListTile n() {
      return ListTile(
        title: Text("data"),
      );
    }

    SizedBox s = SizedBox(
      width: d,
    );
    SizedBox ss = SizedBox(
      width: dd,
    );
    SizedBox sss = SizedBox(
      height: ddd,
    );
    void f() {
      print('hloe');
    }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Abdulrhman Adnan'),
        backgroundColor: const Color.fromARGB(255, 46, 10, 176),
        actions: [
          s,
          IconButton(onPressed: f, icon: Icon(Icons.search)),
          s,
          IconButton(onPressed: f, icon: Icon(Icons.add_alert_sharp)),
          const LanguageToggleButton(),
          s,
          IconButton(
              onPressed: () => print('hh'),
              icon: Icon(
                Icons.share,
                textDirection: TextDirection.rtl,
              )),
          s,
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          sss,
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed(AppRoutes.h2);
                  },
                  label: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 192, 215),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    width: 100,
                    height: 50,
                  )),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
              s,
              ElevatedButton.icon(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.profile2,
                    arguments: {'name': 'ali', 'email': 'aa'},
                  );
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => ProfileScreen(
                  //     username: username,
                  //     attempts: widget.attempts,
                  //   ),
                  // ));
                },
                label: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 71, 71, 53),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  width: 100,
                  height: 50,
                ),
              ),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          sss,
          Row(
            children: [
              s,
              s,
              s,
              ElevatedButton.icon(
                onPressed: () {
                  Get.toNamed(AppRoutes.sulder);
                },
                label: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 168, 168, 148),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  width: 100,
                  height: 50,
                ),
              ),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
              s,
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 71, 71, 53),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                width: 100,
                height: 50,
              ),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          sss,
          Row(
            children: [
              s,
              s,
              s,
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 168, 168, 148),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                width: 100,
                height: 50,
              ),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
              s,
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 71, 71, 53),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                width: 100,
                height: 50,
              ),
              s,
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          sss,
          Divider(
            color: Colors.black,
            height: 20,
            thickness: 1,
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Container(
                //  width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Text('data'),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
            ],
          ))
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width / 2 + 70,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 56, 144, 158),
              child: const DrawerHeader(
                  child: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/pngtree-snake-symbol-pharmacy-color-icon-casts-shadow-on-beige-background-vector-png-image_10205698.png"),
              )),
            ),
            Bulied("حفظ نسخه احتياطيه", Icons.backup),
            Bulied(
                "استرجاع قاعدة البيانات", Icons.replay_circle_filled_outlined),
            Bulied("جوجل درايف", Icons.backup),
            Bulied("دليل الحسابات", Icons.backup),
            Bulied("اعدادات", Icons.backup),
            Bulied("للتواصل والدعم ", Icons.backup),
            Bulied(" حول البرنامج", Icons.backup),
            Bulied(" النسخه المدفوعه", Icons.add_task_sharp),
            Bulied("خروج", Icons.power_settings_new_rounded),
          ],
        ),
      ),
      bottomNavigationBar: Text('data'.tr),
    );
  }

  ListTile Bulied(var text, Icons) {
    return ListTile(
      title: Text(
        text is String ? text.tr : text.toString(),
        style: TextStyle(color: const Color.fromARGB(255, 9, 1, 1)),
      ),
      leading: Icon(Icons),
    );
  }
}
