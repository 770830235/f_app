import 'package:f_app/home.dart';
import 'package:f_app/user.dart';
import 'package:flutter/material.dart';
import 'user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailC = TextEditingController();
  final _passC = TextEditingController();

  @override
  void dispose() {
    _emailC.dispose();
    _passC.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (!UserStore.hasAnyAccount()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('لا يوجد حساب. قم بإنشاء حساب جديد أولاً')),
      );
      return;
    }

    final ok = UserStore.login(
      email: _emailC.text,
      password: _passC.text,
    );

    if (ok) {
       Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Myapp(username: '', attempts: [],
         
        ),
      ));
    } else {
      // هنا تشمل (غير موجود) أو (كلمة مرور غلط)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('البريد غير موجود أو كلمة المرور غير صحيحة')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تسجيل الدخول')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailC,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'البريد الإلكتروني',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _passC,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'كلمة المرور',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _handleLogin,
              child: const Text('تسجيل الدخول'),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/register'),
              child: const Text('إنشاء حساب جديد'),
            ),
          ],
        ),
      ),
    );
  }
}
