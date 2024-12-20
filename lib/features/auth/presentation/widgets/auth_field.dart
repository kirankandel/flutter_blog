import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final  String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const AuthField({super.key, required this.hintText, required this.controller, this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) => value!.isEmpty ? '$hintText cannot be empty' : null,
    );
  }
}