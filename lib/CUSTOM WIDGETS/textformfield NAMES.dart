import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TextFormName extends StatefulWidget {
  final String label;


  const TextFormName({
    super.key,
    required this.label,
  });

  @override
  State<TextFormName> createState() => _TextFormNameState();
}

class _TextFormNameState extends State<TextFormName> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.green,
        ),
        // labelText: widget.label,
        // labelStyle: GoogleFonts.aclonica(color: Colors.green, fontSize: 10),
        hintText: widget.label,
        hintStyle: GoogleFonts.alumniSans(color: Colors.green, fontSize: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(150)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.green),
        ),

      ),
    );
  }
}
