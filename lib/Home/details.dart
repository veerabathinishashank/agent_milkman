import 'package:flutter/material.dart';

void main() {
  runApp(search());
}

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MySearchPage(),
      drawerEnableOpenDragGesture: false,
    );
  }
}

class MySearchPage extends StatefulWidget {
  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Mechanic Details"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: _buildSearchField(),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Search",
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      onChanged: (value) {
        // Handle search logic here if needed
      },
    );
  }
}
