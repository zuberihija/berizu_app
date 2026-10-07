import 'package:flutter/material.dart';

void main() {
  runApp(const BerizuApp());
}

class BerizuApp extends StatelessWidget {
  const BerizuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Berizu',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BerizuHome(),
    );
  }
}

class BerizuHome extends StatelessWidget {
  const BerizuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BERIZU'),
      ),
      body: const Center(
        child: Text(
          'Technology. Delivered.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}