import 'package:flutter/material.dart';
import 'package:virtumall/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VirtuMall',
      theme: ThemeData(
        fontFamily: 'GeneralSans',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.black, // Set the primary color for buttons
          onPrimary: Colors.white, // Set the text color for buttons
        ),
        useMaterial3: true,
      ),
      home: WelcomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
