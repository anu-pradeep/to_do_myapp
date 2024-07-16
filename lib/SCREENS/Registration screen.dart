
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CUSTOM WIDGETS/Textformfield PWD.dart';
import '../CUSTOM WIDGETS/textformfield NAMES.dart';

void main() {
  runApp(const MaterialApp(
    home: RegisterPage(),
  ));
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 150,
                ),
                child: Text(
                  "Create Account",
                  style: GoogleFonts.aclonica(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green[900]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding:
                EdgeInsets.only(top: 05, left: 15, right: 15, bottom: 05),
                child: TextFormName(label: 'User name'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding:
                EdgeInsets.only(top: 03, left: 15, right: 15, bottom: 05),
                child: CustomTextField(label: 'Password', iconVisible: true),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding:
                EdgeInsets.only(top: 03, left: 15, right: 15, bottom: 05),
                child: CustomTextField(
                    label: 'Confirm Password', iconVisible: true),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green[400]),
                child: Text(
                  "Sign up",
                  style: GoogleFonts.aclonica(color: Colors.green[900]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}