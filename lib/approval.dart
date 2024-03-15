import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retailerusinggetx/Home/home.dart';

class approval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Approval Page'),
        backgroundColor: Colors.orangeAccent,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details are submitted, Our team will verify and get back to you shortly',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Adding some space between the text and the button
            ElevatedButton(
              onPressed: () {
                Get.to(() => home());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, // Set the background color here
              ),
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
