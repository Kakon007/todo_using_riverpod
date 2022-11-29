import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_using_riverpod/list_of_data.dart';

class TodoListscreen extends ConsumerWidget {
  const TodoListscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: ref.watch(listOfStringProvider).length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ref.watch(listOfStringProvider)[index]),
          );
        },
      ),
    );
  }
}