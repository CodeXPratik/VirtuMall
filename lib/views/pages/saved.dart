import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Saved',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
