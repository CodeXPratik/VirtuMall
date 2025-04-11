import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _searchTerm = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Discover',
          style: TextStyle(fontWeight: FontWeight.w600,
          fontSize: 32),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NotificationsPage(title: 'Notifications');
                  },
                ),
              );
            },
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // TextField Widget
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for products...',
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  contentPadding: const EdgeInsets.all(16.0),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchTerm = value;
                  });
                  // Implement your search logic here.
                  if (kDebugMode) {
                    print('Search term: $_searchTerm');
                  }
                },
              ),

              const SizedBox(
                height: 16.0,
              ), // Spacing between TextField and buttons
              // Row of Buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8.0, // Horizontal spacing between buttons
                  children: [
                    FilledButton(onPressed: () {}, child: const Text('All')),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Fashion'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Furniture'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Electronics'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Accessories'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
