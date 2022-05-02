import 'package:flutter/material.dart';
import 'package:to_do_list/controllers/storage.dart';
import 'package:to_do_list/screens/home_screen.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  var controller = TextEditingController();
  var storage = Storage();
  List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar itens')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(controller: controller),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  items.add(controller.text);
                });
              },
              child: const Text('Adicionar'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(title: Text(items[index])),
                  );
                },
                itemCount: items.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
