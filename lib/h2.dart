import 'package:f_app/H3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'language_button.dart';

class H2 extends StatefulWidget {
  const H2({super.key});

  @override
  State<H2> createState() => _H2State();
}

class _H2State extends State<H2> {
  TextEditingController _name = TextEditingController();
  List<String> studint = ['ali', 'kasim', 'm', 'l'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 163, 234),
        title: Text(
          "data".tr,
          textAlign: TextAlign.center,
        ),
        actions: const [LanguageToggleButton()],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              onSubmitted: (value) {},
              controller: _name, 
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(
                    Icons.save,
                    color: Colors.blue,
                  ),
                  label: Text(
                    "NAME".tr,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  hintText: "input name".tr,
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 96, 86, 86)),
                  filled: true,
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
                    ElevatedButton(
            onPressed: () {
              setState(() {});
              Get.to(() => H3(studint: studint));
            },
            child: Text(
              "show".tr,
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue)),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              if (_name.text.isNotEmpty && !studint.contains(_name.text))
                studint.add(_name.text);
            },
            child: Text(
              "SAVE".tr,
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue)),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: studint.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 2),
                child: ListTile(
                  onTap: () {
                    _name.text = studint[index];
                  },
                  leading: IconButton(
                    onPressed: () {
                      studint.removeAt(index);
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
                        studint[index] = _name.text;
                      },
                      icon: Icon(
                        Icons.edit,
                        color: const Color.fromARGB(255, 13, 241, 146),
                      )),
                  title: Text(
                    studint[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 230, 244, 255)),
                  ),
                  tileColor: Colors.black,
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}


// class H2 extends StatefulWidget {
//   State<H2> createState() => _H2State();
// }
// class _H2State extends State<H2> {
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }