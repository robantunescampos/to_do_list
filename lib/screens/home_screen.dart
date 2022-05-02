import 'package:flutter/material.dart';
import 'package:to_do_list/controllers/storage.dart';
import 'package:to_do_list/screens/add_item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var storage = Storage();
  List<String>? items;

  getItems() async {
    items = await storage.read('items');
  }

  @override
  void initState() {
    getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To Do List')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const AddItemScreen(),
            )),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items![index]),
            ),
          );
        },
        itemCount: items!.length,
      ),
    );
  }
}
