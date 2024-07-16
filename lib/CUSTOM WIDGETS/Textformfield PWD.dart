import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool iconVisible;

  const CustomTextField({
    super.key,
    required this.label,
    required this.iconVisible,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPass,
      obscuringCharacter: '*',
      // style: GoogleFonts.aclonica(color: Colors.green),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.green,
        ),
        // labelText: widget.label,
        // labelStyle: GoogleFonts.alumniSans(color: Colors.green[900], fontSize: 15),
        hintText: widget.label,
        hintStyle:
        GoogleFonts.alumniSans(color: Colors.green[400], fontSize: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(150)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.green),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.green),
        ),
        suffixIcon: Visibility(
          visible: widget.iconVisible == true,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (showPass) {
                  showPass = false;
                } else {
                  showPass = true;
                }
              });
            },
            icon: Icon(
                showPass == true ? Icons.visibility_off : Icons.visibility),
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}