import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo; 
  final onToDoChange; 
  final onDeleteItem;
  const TodoItem({Key? key, required this.todo, required this.onToDoChange, required  this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChange(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(todo.isDone ? Icons.check_box : Icons.check_box_outline_blank , color: tdBlue),
          title: Text(todo.todoText!,
              style: TextStyle(
                  fontSize: 16,
                  color: tdBlack,
                  decoration:todo.isDone ?  TextDecoration.lineThrough:null)),
          trailing: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: tdRed,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                  color: Colors.white,
                  iconSize: 18,
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    onDeleteItem(todo.id);
                  })),
        ));
  }
}
