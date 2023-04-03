import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  final String owner = "Ninja's";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(child: Text("Welcome to $owner World...")),
      ),
      drawer: Drawer(),
    );
  }
}
