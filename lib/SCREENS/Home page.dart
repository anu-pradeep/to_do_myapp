
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../COMPONENTS/appbar.dart';
import '../COMPONENTS/dialogbox.dart';
import '../COMPONENTS/todotile.dart';
import '../DATABASE/hive database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
// this is a private class and automatically created.state change aavunnathin anusarich ivde build method update aayikondirikkm.
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  // true anusarich checkbox tick maarum. true koduthal automatic tick varum

  // reference hive box
  final _mybox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();


  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }
  @override
  void initState() {
    if(_mybox.get('TODOLIST')==null)
    {
      db.createInitialData();
    }
    else
    {
      db.loadData();
    }
    super.initState();
  }

// create new task
  void CreateTask() {
    showDialog(
        context: context,
        builder: (context) {
          return TaskBox(
            controller: _controller,
            onSave: SavenewTask,
            onCancel: Navigator.of(context).pop,
          );
        });
  }

  // save new task
  void SavenewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: const AppbarCustom(),
      floatingActionButton: FloatingActionButton(
        onPressed: CreateTask,
        backgroundColor: Colors.green[100],
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.green[800],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkboxChanged(value, index),
            deletefunction: (context) => deleteTask(index),
          );
        },
        itemCount: db.toDoList.length,
      ),
    );
  }
}
