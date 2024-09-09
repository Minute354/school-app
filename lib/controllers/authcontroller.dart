import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class AuthController {
  final BuildContext context;
  AuthController(this.context);

  void signIn(String username, String password) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.signIn(username, password);
  }

  void signUp(String username, String password) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.signUp(username, password);
  }

  void signOut() {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.signOut();
  }
}
