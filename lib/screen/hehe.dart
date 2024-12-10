import 'package:flutter/material.dart';

class Hehe extends StatelessWidget {
  const Hehe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 82, 82),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 83, 82, 82),
      ),
      body: const Center(
        child: Text(
          "Nanti ya 😁",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
