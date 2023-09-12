import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Tab'),
      ),
      body: const Center(
        child: Text(
          'Search',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
