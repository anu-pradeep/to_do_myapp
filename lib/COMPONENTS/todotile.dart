import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?) onChanged;
  Function(BuildContext)? deletefunction;
  TodoTile(
      {super.key,
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        required this.deletefunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deletefunction,
            icon: Icons.delete_outline_outlined,
            backgroundColor: Colors.green,
            borderRadius: BorderRadius.circular(10),
          )
        ]),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  checkColor: Colors.green[100],
                  activeColor: Colors.green[900],
                ),
                Text(
                  taskName,
                  style: GoogleFonts.aBeeZee(
                      color: Colors.green[800],
                      fontWeight: FontWeight.w600,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}