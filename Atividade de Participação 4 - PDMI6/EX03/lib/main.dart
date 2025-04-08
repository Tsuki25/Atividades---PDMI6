import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notas de Tarefas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TaskPage(),
    );
  }
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<bool> checkedTasks = List.generate(5, (_) => false);

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Informação'),
        content: Text('Você está no App de Notas de Tarefas'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('View Completed Tasks'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You have 5 uncompleted tasks',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Card(
                    color: Colors.yellow[100],
                    child: ListTile(
                      title: Text('Task 2022-07-09 18:08:3${index}.xxxxxx'),
                      trailing: Checkbox(
                        value: checkedTasks[index],
                        onChanged: (value) {
                          setState(() {
                            checkedTasks[index] = value!;
                          });
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAlertDialog,
        child: Icon(Icons.info),
      ),
    );
  }
}
