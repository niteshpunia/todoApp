import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/screens/add_task.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Task title'),
            subtitle: Text('oct 10,20201 • High'),
            trailing: Checkbox(
              onChanged: (value) {
                print(value);
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
            ),
          ),
          Divider(
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddTask())),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 90.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My tasks',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        '1 of 10',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ]),
              );
            }
            return _buildTask(index);
          },
        ));
  }
}
