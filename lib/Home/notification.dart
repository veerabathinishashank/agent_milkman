import 'package:flutter/material.dart';

void main() {
  runApp(notification());
}

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationsPage(),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.orangeAccent,

      ),
      body: Center(
        child: Text(
          'No Notifications',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
