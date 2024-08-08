import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;
  Function(BuildContext)?deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right: 25.0, top: 25.0),

        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    activeColor: Colors.black,
                    ),

                Text(
                  taskName,
                  style: TextStyle(decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none),
                ),
                ],
                ),
                IconButton(
                  onPressed: ()=>deleteFunction!(context),
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),

              ]
          ),
        ),
    );
  }
}
