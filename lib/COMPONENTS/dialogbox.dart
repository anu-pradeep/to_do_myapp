import 'package:flutter/material.dart';
import 'package:to_do_myapp/COMPONENTS/textfield.dart';
import 'mybutton.dart';

class TaskBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  TaskBox(
      {super.key,
        this.controller,
        required this.onSave,
        required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[100],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Textfield(
              controller: controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myButtons(
                  text: 'Save',
                  onPressed: onSave,
                ),


                myButtons(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}