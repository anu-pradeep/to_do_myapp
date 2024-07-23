import 'dart:async';
import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';

import 'Home page.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SplashToDo(),
//     useInheritedMediaQuery: true,
//   ));
// }

class SplashToDo extends StatefulWidget {
  const SplashToDo({super.key});

  @override
  State<SplashToDo> createState() => _splashappstate();
}

class _splashappstate extends State<SplashToDo> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.green,
                      Colors.white,
                    ],
                  )),
              child: Column(children: [
                TweenAnimationBuilder(
                    tween: Tween(begin: 10.0, end: 50.0),
                    duration: const Duration(seconds: 5),
                    builder: (BuildContext context, value, child) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 250),
                          child: Text(
                            "_To DO_",
                            style: GoogleFonts.aclonica(fontSize: value),
                          ),
                        ),
                      );
                    }),
                Text(
                  " To boost your day",
                  style: GoogleFonts.aclonica(),
                )
              ])),
        ));
  }
}