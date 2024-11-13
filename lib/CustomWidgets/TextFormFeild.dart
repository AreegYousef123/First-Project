import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  CustomTextField({required this.label, required this.controller, this.obscureText = false, this.validator});
//
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
      validator: validator,
    );
  }
}