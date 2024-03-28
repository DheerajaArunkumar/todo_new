import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // ignore: unused_field
  final _myBox = Hive.box('mybox');
  void createInitialData() {
    toDoList = [
      ['make tutorial', false],
      ['do medication', false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
