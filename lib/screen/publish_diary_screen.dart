import 'package:flutter/material.dart';

class PublishDiaryScreen extends StatefulWidget {
  final bool isLogIn;
  const PublishDiaryScreen({super.key, required this.isLogIn});

  @override
  State<PublishDiaryScreen> createState() => _PublishDiaryScreenState();
}

class _PublishDiaryScreenState extends State<PublishDiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share diaries',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: const Center(
        child: Text('Publish diary'),
      ),
    );
  }
}
