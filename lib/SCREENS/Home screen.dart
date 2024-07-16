import 'package:flutter/material.dart';
import '../CUSTOM WIDGETS/appbar.dart';
import '../CUSTOM WIDGETS/floating action button.dart';
void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
  ));
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppbarCustom(),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: FloatingButton(),
              ),
              SingleChildScrollView(
                child: FloatingButton(),
              )
            ],

            )
        ));
  }
}

