// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/AmbulancePage.dart';
import 'package:flutter_application_1/pages/HospitalPage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapPage2(),
    );
  }
}

class MapPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/GoogleMap.png', // Replace with your map image asset
              width: 300,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HospitalPage(),
                    ));
                // TODO: Fetch current location
              },
              child: Text('Fetch Current Location'),
            ),
          ],
        ),
      ),
    );
  }
}
