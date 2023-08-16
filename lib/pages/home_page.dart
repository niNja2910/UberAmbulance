// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MapPage.dart';
import 'package:flutter_application_1/pages/MapPage2.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
    );
  }
}

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uber Ambulance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageButton(
              imageAsset: 'assets/images/Ambulance.jpg',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MapPage())));
              },
            ),
            SizedBox(height: 20),
            ImageButton(
              imageAsset:
                  'assets/images/Hospital.png', // Replace with your image asset path
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MapPage2())));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final String imageAsset;
  final VoidCallback onPressed;

  ImageButton({required this.imageAsset, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
