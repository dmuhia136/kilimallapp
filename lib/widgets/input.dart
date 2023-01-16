import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  TextEditingController controller;
  String hint;
  Color borderColor;
  String label;
  IconData? icon;
  bool obscure;
  InputField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.label,
      required this.obscure,
      required this.borderColor,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        padding:const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
              hintText: hint,
              icon: Icon(icon),
              border: InputBorder.none,
              hoverColor: Colors.green[300],
              label: Text(
                label,
                style:const TextStyle(color: Color.fromARGB(255, 14, 0, 0)),
              )),
        ),

      ),
    );
  }
}
