import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key, this.name, this.email});
  final String? name;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini Nama : $name'),
            Text('Ini Email : $email'),
          ],
        ),
      ),
    );
  }
}
