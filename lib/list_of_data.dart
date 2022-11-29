import 'package:flutter_riverpod/flutter_riverpod.dart';

List<String>? todoList = [
  'Done with isar',
  'Done with hive',
  'Done with sqlite',
];

var listOfStringProvider=StateProvider<List<String>>((ref)=>todoList!);