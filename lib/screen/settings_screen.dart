import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text("Settings"),
        backgroundColor:Color.fromARGB(255, 186, 106, 191),
      ),
      body: const Center(
        child: Text(
          "Settings Page Body",
          style: TextStyle(fontSize: 20),
        ),

      ),
    );
  }
}
