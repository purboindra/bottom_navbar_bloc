import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text("Hello From Profile Screen"),
      ),
    );
  }
}
