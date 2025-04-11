import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Search',
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
