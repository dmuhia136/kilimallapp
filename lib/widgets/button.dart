import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String btnText;
  Color borderColor;
  CustomButton({super.key, required this.btnText, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        btnText,
        style: GoogleFonts.lato(fontSize: 20),
      ),
    );
  }
}
