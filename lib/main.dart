import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retailerusinggetx/Home/home.dart';
import 'package:retailerusinggetx/Home/payment.dart';
import 'package:retailerusinggetx/approval.dart';
import 'package:retailerusinggetx/forgetpass.dart';
import 'package:retailerusinggetx/signup1.dart';
import 'homescreen.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: "/",
      getPages: <GetPage>[
       GetPage(name: "/forgetpass", page: () => forgetpass()),
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/homescreen", page: () => homescreen()),
        GetPage(name: "/signup", page: () => signup()),
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/signup1", page: () => signup1()),
        GetPage(name: "/approval", page: () => approval()),
        GetPage(name: "/approval", page: () => home()),
        GetPage(name: "/payment", page: () => payment()),



      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Retailer For Vaahanaa'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
        //  alignment: Alignment.center,
         decoration: BoxDecoration(
            image: DecorationImage(
             image: AssetImage('images/back.jpg'),
             fit: BoxFit.cover,

            ),

          ),

          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Container(
                color: Colors.black, // Change the color as needed
              ),
              // Background Image
              Container(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/back.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the login page when the button is pressed
                  Get.toNamed("/login");
                },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, // Set the background color here
              ),

                child: const Text('Log in'),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the signup page when the button is pressed
                  Get.toNamed("/signup");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, // Set the background color here
                ),
                child: const Text('Sign up'),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
