import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FloatingButton(),
  ));
}

class FloatingButton extends StatefulWidget {
  FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
// create new task
  void Createtask() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 460, left: 280),
      child: Center(
        child: FloatingActionButton(
          onPressed: Createtask,
          backgroundColor: Colors.green[100],
          child: Icon(
            Icons.add_chart_outlined,
            color: Colors.green[800],
          ),
        ),
      ),
    );
  }
}

// create a new task
