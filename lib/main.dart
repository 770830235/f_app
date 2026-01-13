import 'package:f_app/home.dart';
import 'package:f_app/login2.dart';
import 'package:f_app/profile.dart';
import 'package:f_app/register_page.dart';
import 'package:f_app/shieldscrin.dart';
import 'package:flutter/material.dart';

import 'scsh.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: M(),
    
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const ProfileScreen(username: '', attempts: [],),
      },

// drawer:Drawer(
// child: ListView(
//   children: [

//   ],
// ),

// ) ,
    ),
  );
}

class M extends StatefulWidget {
  const M({super.key});

  @override
  State<M> createState() => _MState();
}

class _MState extends State<M> {
  List<Map<String,String>>loginattemps=[];
  @override

  Widget build(BuildContext context) {
    return Sshieldscrin(attemps:loginattemps, attempts: [],);
  }
}
/*   import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'welcome_profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth In-Memory',
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const WelcomeProfilePage(),
      },
    );
  }
}*/

// class H2 extends StatefulWidget {
//   State<H2> createState() => _H2State();
// }
// class _H2State extends State<H2> {
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
// class Myapp extends StatelessWidget {
//   const Myapp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 70, 33, 165),
//         body: SafeArea(
//           child: Column(
//             children: [
//               const CircleAvatar(
//                 radius: 50.0,
//                 backgroundImage: AssetImage('imgs/IMG_2878.JPG'),
//               ),
//               const Text(
//                 'عبدالرحمن عدنان',
//                 style: TextStyle(
//                   fontSize: 40.0,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 'Ahmed noman',
//                 style: TextStyle(color: Colors.white, fontSize: 15.0),
//               ),
//               Container(
//                 margin: EdgeInsets.all(20.0),
//                 padding: EdgeInsets.all(10.0),
//                 color: Colors.white,
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.start,
//                     ),
//                     SizedBox(
//                       width: 15.0,
//                       height: 15.0,
//                     ),
//                     Icon(
//                       Icons.phone,
//                       color: Colors.red,
//                     ),
//                     Text(
//                       '770830235',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.green,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.all(10.0),
//                 margin: EdgeInsets.all(20.0),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.email,
//                       color: Colors.green,
//                     ),
//                     SizedBox(
//                       width: 15.0,
//                     ),
//                     Text(
//                       'abdulrhman@gmail.com',
//                       style: TextStyle(fontSize: 20.0),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//               Container(
//                 width: 100.0,
//                 color: Colors.white,
                
//               ),
//               Text(
//                 'of Yemen Ebb ',
//                 style: TextStyle(fontSize: 20.0, color: Colors.red),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// class H2 extends StatefulWidget {
//   State<H2> createState() => _H2State();
// }
// class _H2State extends State<H2> {
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }