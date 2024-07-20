import 'package:flutter/material.dart';

class MySecretDiaryScreen extends StatefulWidget {
  final bool isLogIn;
  const MySecretDiaryScreen({super.key, required this.isLogIn});

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
        child: widget.isLogIn
            ? const Text(
                'My secret diary',
              )
            : const Text('Please login to your account'),
      ),
    );
  }
}
