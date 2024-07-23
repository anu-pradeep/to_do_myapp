import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myButtons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  myButtons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.green[200],
      child: Text(
        text,
        style: GoogleFonts.aclonica(
          color: Colors.green[800], fontWeight: FontWeight.w400,),
      ),
    );
  }
}