import 'package:flutter/material.dart';
import 'package:to_do_list/screens/add_item_screen.dart';
import 'package:to_do_list/screens/home_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AddItemScreen(),
    );
  }
}
