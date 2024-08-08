import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'pages/todo_page.dart';
Future<void> main() async {

  //initialize the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const To_Do_App());
}

class To_Do_App extends StatelessWidget {
  const To_Do_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
