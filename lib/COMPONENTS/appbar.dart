import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppbarCustom({super.key});

  @override
  State<AppbarCustom> createState() => _AppbarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green[200],
      title: Text(
        "To Do List",
        style: GoogleFonts.aclonica(color: Colors.green[900]),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton(
          color: Colors.green[100],
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
                child: Text(
                  "Settings",
                  style: GoogleFonts.alumniSans(
                      color: Colors.green[800], fontWeight: FontWeight.w600),
                )),
            PopupMenuItem(
                child: Text(
                  "Help",
                  style: GoogleFonts.alumniSans(color: Colors.green[800]),
                )),
            // PopupMenuItem(child: Text("Delete")),
          ],
        )
      ],
    );
  }
}