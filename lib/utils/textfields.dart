import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  final TextEditingController controllers;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final Widget? icon;
  const Fields({
    super.key,
    required this.controllers,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
     this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllers,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffix: icon,
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 150, 149, 149), fontSize: 15),
          labelStyle: const TextStyle(color: Colors.purple)),
      obscureText: obscureText,
    );
  }
}
