import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String judul;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.judul,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: judul,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}