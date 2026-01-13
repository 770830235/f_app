// import 'dart:async';
// import 'package:f_app/login.dart';
// import 'package:flutter/material.dart';
// import 'login.dart';
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Simple App',
// //       theme: ThemeData(
// //         useMaterial3: true,
// //       ),
// //       home: const SplashScreen(),
// //     );
// //   }
// // }

// /* ================= Splash Screen ================= */

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(const Duration(seconds: 5,), ( ) {
//       if (!mounted) return;
     

//       Navigator.pushReplacement(
//         context,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset(
//           'assets/images/splash.png',
//           width: 180,
//           height: 180,
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }

// // /* ================= Login Screen ================= */

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   final usernameController = TextEditingController();
// //   final passwordController = TextEditingController();

// //   bool hidePassword = true;

// //   @override
// //   void dispose() {
// //     usernameController.dispose();
// //     passwordController.dispose();
// //     super.dispose();
// //   }

// //   void doLogin() {
// //     final username = usernameController.text.trim();
// //     final password = passwordController.text;

// //     if (username.isEmpty || password.isEmpty) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(content: Text('الرجاء إدخال اسم المستخدم وكلمة المرور')),
// //       );
// //       return;
// //     }

// //     // هنا اعتبرناه تسجيل دخول ناجح بدون قاعدة بيانات
// //     Navigator.pushReplacement(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => ProfileScreen(username: username),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('تسجيل الدخول'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 24),
// //             TextField(
// //               controller: usernameController,
// //               decoration: const InputDecoration(
// //                 labelText: 'اسم المستخدم',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 12),
// //             TextField(
// //               controller: passwordController,
// //               obscureText: hidePassword,
// //               decoration: InputDecoration(
// //                 labelText: 'كلمة المرور',
// //                 border: const OutlineInputBorder(),
// //                 suffixIcon: IconButton(
// //                   onPressed: () {
// //                     setState(() => hidePassword = !hidePassword);
// //                   },
// //                   icon: Icon(
// //                       hidePassword ? Icons.visibility : Icons.visibility_off),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             SizedBox(
// //               width: double.infinity,
// //               height: 48,
// //               child: ElevatedButton(
// //                 onPressed: doLogin,
// //                 child: const Text('دخول'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // /* ================= Profile Screen ================= */

// // class ProfileScreen extends StatelessWidget {
// //   final String username;
// //   const ProfileScreen({super.key, required this.username});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('الملف الشخصي'),
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Container(
// //           padding: const EdgeInsets.all(16),
// //           margin: const EdgeInsets.all(16),
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(12),
// //             border: Border.all(color: Colors.black12),
// //           ),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               const Icon(Icons.person, size: 64),
// //               const SizedBox(height: 12),
// //               Text(
// //                 'مرحباً، $username',
// //                 style:
// //                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 8),
// //               const Text('هذه صفحة الملف الشخصي بعد تسجيل الدخول.'),
// //               const SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.pushReplacement(
// //                     context,
// //                     MaterialPageRoute(
// //                         builder: (context) => const LoginScreen()),
// //                   );
// //                 },
// //                 child: const Text('تسجيل خروج'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
