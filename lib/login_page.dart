import 'package:flutter/material.dart';
import 'package:pam_praksatu/detail_page.dart';
import 'package:pam_praksatu/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final String name = 'Puput';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text('Push'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(),
                  ),
                );
              },
              child: const Text('Push Replacement'),
            )
          ],
        ),
      ),
    );
  }
}
