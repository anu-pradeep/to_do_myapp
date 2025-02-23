import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'SCREENS/Splash screen.dart';

void main() async{
  // initialize the hive
  await Hive.initFlutter();
  // open hive box
  var box=await Hive.openBox('mybox');
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashToDo(),
      debugShowCheckedModeBanner: false,
      // useInheritedMediaQuery: true,
    );
  }
}