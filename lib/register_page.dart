import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            'Nama: $name',
            style: const TextStyle(
                fontSize: 24, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
