import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Subhankar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              'Welcome to $days days of flutter by $name'), // we can use + operator to concat 2 strings. But we used string interpolation here.
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
