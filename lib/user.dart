class UserModel {
  final String name;
  final String email;
  final String password;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
  });
}

class UserStore {
  // مصفوفة المستخدمين (تخزين مؤقت)
  static final List<UserModel> users = [];

  // المستخدم الذي سجّل دخول حالياً
  static UserModel? currentUser;

  static bool hasAnyAccount() => users.isNotEmpty;

  static bool emailExists(String email) {
    final e = email.trim().toLowerCase();
    return users.any((u) => u.email.trim().toLowerCase() == e);
  }

  static bool register({
    required String name,
    required String email,
    required String password,
  }) {
    if (emailExists(email)) return false;

    users.add(UserModel(
      name: name.trim(),
      email: email.trim(),
      password: password,
    ));
    return true;
  }

  static bool login({
    required String email,
    required String password,
  }) {
    final e = email.trim().toLowerCase();
    final user = users.where((u) => u.email.trim().toLowerCase() == e).toList();
    if (user.isEmpty) return false;

    if (user.first.password != password) return false;

    currentUser = user.first;
    return true;
  }

  static void logout() {
    currentUser = null;
  }
}
