import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../CUSTOM WIDGETS/Textformfield PWD.dart';
import '../CUSTOM WIDGETS/textformfield NAMES.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        body: SingleChildScrollView(
            child: Form(
                key: formkey,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 180,
                    ),
                    child: Text(
                      "Bienvenue!",
                      style: GoogleFonts.aclonica(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green[900]),
                    ),
                  ),
                  const SizedBox(
                    height: 05,
                  ),
                  Text(
                    "Sign in to your account",
                    style: GoogleFonts.aclonica(
                        color: Colors.green[400], fontSize: 13),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 08, left: 15, right: 15, bottom: 08),
                    child: TextFormName(
                      label: 'User name',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 08, left: 15, right: 15, bottom: 08),
                    child:
                        CustomTextField(label: 'Password', iconVisible: true),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green[400]),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.aclonica(color: Colors.green[900]),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.green[900]),
                    child: Text(
                      "Don't have an account.? Create",
                      style: GoogleFonts.aclonica(color: Colors.green),
                    ),
                  )
                ]))));
  }
}
