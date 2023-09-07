import 'package:belinav/Login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Belinav());
}

class Belinav extends StatelessWidget {
  const Belinav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
