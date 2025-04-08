import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar com FAB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedTab = 0;
  bool _showOptions = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
      _showOptions = false; // esconde opções se trocar aba
    });
  }

  void _toggleFabOptions() {
    setState(() {
      _showOptions = !_showOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar with FAB'),
      ),
      body: Center(
        child: Text('TAB: $_selectedTab', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_showOptions) ...[
            FloatingActionButton(
              mini: true,
              heroTag: 'option1',
              onPressed: () {},
              child: Icon(Icons.insert_drive_file),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              mini: true,
              heroTag: 'option2',
              onPressed: () {},
              child: Icon(Icons.email),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              mini: true,
              heroTag: 'option3',
              onPressed: () {},
              child: Icon(Icons.call),
            ),
            SizedBox(height: 8),
          ],
          FloatingActionButton(
            heroTag: 'mainFab',
            onPressed: _toggleFabOptions,
            child: Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.format_align_justify),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.text_fields),
                onPressed: () => _onItemTapped(1),
              ),
              SizedBox(width: 48), // espaço para o FAB
              IconButton(
                icon: Icon(Icons.view_column),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(Icons.warning),
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
