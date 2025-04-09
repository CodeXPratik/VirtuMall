import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final String title;

  const NotificationsPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Notification 1'),
            Text('Notification 2'),
            Text('Notification 3'),
          ],
        ),),
      ),
    );
  }
}
