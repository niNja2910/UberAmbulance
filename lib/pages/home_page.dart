// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
