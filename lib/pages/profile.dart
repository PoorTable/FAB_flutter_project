import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Tab'),
      ),
      body: const Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
