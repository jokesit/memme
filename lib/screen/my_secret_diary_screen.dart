import 'package:flutter/material.dart';

class MySecretDiaryScreen extends StatefulWidget {
  const MySecretDiaryScreen({super.key});

  @override
  State<MySecretDiaryScreen> createState() => _MySecretDiaryScreenState();
}

class _MySecretDiaryScreenState extends State<MySecretDiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My diaries',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Text('Secret diary'),
      ),
    );
  }
}
