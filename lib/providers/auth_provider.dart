import 'package:flutter/material.dart';
import '../models/student.dart';

class AuthProvider with ChangeNotifier {
  Student? _currentUser;
  final List<Student> _registeredUsers = [];

  Student? get currentUser => _currentUser;

  void signIn(String username, String password) {
    _currentUser = _registeredUsers.firstWhere(
      (user) => user.registerNumber == username && user.password == password,
    );
    notifyListeners();
  }

  void signUp(String username, String password) {
    final newUser = Student(
      registerNumber: username,
      name: 'User Name',
      password: password,
      division: 'N/A',
    );
    _registeredUsers.add(newUser);
    _currentUser = newUser;
    notifyListeners();
  }

  void signOut() {
    _currentUser = null;
    notifyListeners();
  }

  bool get isAuthenticated => _currentUser != null;
}
