import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppbarCustom({super.key});

  @override
  State<AppbarCustom> createState() => _AppbarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[200],
      title: Text(
        "To Do List",
        style: GoogleFonts.aclonica(color: Colors.green[900]),
      ),
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
      bottom: TabBar(
        tabs: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Upcoming",
                  style: GoogleFonts.alumniSans(
                      color: Colors.green[800], fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Icon(
                Icons.format_list_numbered_rtl,
                color: Colors.green[900],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Completed",
                  style: GoogleFonts.alumniSans(
                      color: Colors.green[800], fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.playlist_add_check,
                color: Colors.green[900],
              ),
            ],
          ),
        ],
        indicatorColor: Colors.green,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
  }
}