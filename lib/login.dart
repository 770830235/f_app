// import 'package:f_app/home.dart';
// import 'package:flutter/material.dart';
// import 'profile.dart';

// class LoginScreen extends StatefulWidget {
//   final List<Map<String, String>> attempts;
//   var usernameController;
//   LoginScreen({super.key, required this.attempts,});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//   bool hidePassword = true;

//   @override
//   void dispose() {
//     usernameController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   void doLogin() {
//     final username = usernameController.text.trim();
//     final password = passwordController.text.trim();

//     if (username.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('الرجاء إدخال اسم المستخدم وكلمة المرور')),
//       );
//       return;
//     }

//     widget.attempts.add({
//       'username': username,
//       'password': password,
//       'time': DateTime.now().toString(),
//     });

//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => Myapp(
//         username: username,
//         attempts: widget.attempts,
//       ),
//     ));
//     // Navigator.pushReplacement(
//     //   context,
//     //   MaterialPageRoute(
//     //     builder: (context) => ProfileScreen(
//     //
//     //     ),
//     //   ),
//     // );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('تسجيل الدخول'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             const SizedBox(height: 24),
//             TextField(
//               controller: usernameController,
//               decoration: const InputDecoration(
//                 labelText: 'اسم المستخدم',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 12),
//             TextField(
//               controller: passwordController,
//               obscureText: hidePassword,
//               decoration: InputDecoration(
//                 labelText: 'كلمة المرور',
//                 border: const OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   onPressed: () {
//                     setState(() => hidePassword = !hidePassword);
//                   },
//                   icon: Icon(
//                     hidePassword ? Icons.visibility : Icons.visibility_off,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             SizedBox(
//               width: double.infinity,
//               height: 48,
//               child: ElevatedButton(
//                 onPressed: doLogin,
//                 child: const Text('دخول'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
