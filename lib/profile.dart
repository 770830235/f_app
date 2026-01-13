
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

   const ProfileScreen({super.key, required this.username, required List<Map<String, String>> attempts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الملف الشخصي'),
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
          child: ListView(
            children:[ Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, size: 64),
                const SizedBox(height: 12),
                Text(
                  'مرحباً، $username',
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text('هذه صفحة الملف الشخصي بعد تسجيل الدخول.'),
                const SizedBox(height: 16),
                // ElevatedButton(
                //   onPressed: () {
                // //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const LoginScreen()),
                //     );
                //   },
                //   child: const Text('تسجيل خروج'),
                // ),
              ],
            ),
        ]  ),
        ),
      ),
    );
  }
}
/*  
import 'package:flutter/material.dart';
import 'user_store.dart';

class WelcomeProfilePage extends StatelessWidget {
  const WelcomeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserStore.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('مرحباً'),
        actions: [
          TextButton(
            onPressed: () {
              UserStore.logout();
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: const Text('خروج', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: user == null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('لا يوجد مستخدم مسجل دخول حالياً'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                      child: const Text('العودة لتسجيل الدخول'),
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أهلاً بك، ${user.name}',
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'الملف الشخصي (Profile):',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
} 
*/