import 'dart:io';

import 'package:flutter/material.dart';

class H3 extends StatefulWidget {
  List<String> studint;
  H3({super.key, required this.studint});
  @override
  State<H3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<H3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my file students'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
          ),
          child: Expanded(
              child: ListView.builder(
            itemCount: super.widget.studint.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 2),
                child: ListTile(
                  onTap: () {},
                  leading: IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.edit,
                        color: const Color.fromARGB(255, 13, 241, 146),
                      )),
                  title: Text(
                    super.widget.studint[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 230, 244, 255)),
                  ),
                  tileColor: Colors.black,
                ),
              );
            },
          )),
        ),
      ),
    );
  }
}
