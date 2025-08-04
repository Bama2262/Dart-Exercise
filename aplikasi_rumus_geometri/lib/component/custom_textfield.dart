import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  CustomTextField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          filled: true,
          fillColor: Colors.white,
        ),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        cursorColor: Colors.black,
      ),
    );
  }
}