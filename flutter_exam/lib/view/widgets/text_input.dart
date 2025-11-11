import 'package:flutter/material.dart';

//molecula

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;

  const TextInput({super.key, required this.controller, required this.labelText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}