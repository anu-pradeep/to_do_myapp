import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: FloatingButton(),));}
class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 460,left: 280),
      child: Center(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[100],
          child: Icon(Icons.add_chart_outlined,color:Colors.green[800],),
        ),
      ),
    );
  }
}