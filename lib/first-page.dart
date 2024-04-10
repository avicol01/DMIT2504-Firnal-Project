// ignore_for_file: avoid_print, use_key_in_widget_constructors, file_names, todo, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:robbinlaw/widgets/mysnackbar.dart';
import 'package:robbinlaw/cardio.dart';
import 'package:robbinlaw/weight.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0), // Adjust height as needed
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 225, 175, 233),
          title: const Text(
            'Main Page',
            style: TextStyle(fontSize: 24), // Adjust title font size
          ),
          // centerTitle: true, // Center the title
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'Select your workout:',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 203, 137, 234),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                // Adjust padding as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // Adjust border radius as needed
              ),
              child: const Text(
                'Cardio',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                //Navigate to View 1
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cardio(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 203, 137, 234),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                // Adjust padding as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // Adjust border radius as needed
              ),
              child: const Text(
                'Weights',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Weight(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'Your Statistics:',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 203, 137, 234),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                // Adjust padding as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // Adjust border radius as needed
              ),
              child: const Text(
                'Stats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ********TO BE COMPLETED*********
                    builder: (context) => Cardio(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
