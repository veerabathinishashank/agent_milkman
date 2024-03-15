import 'package:flutter/material.dart';
import 'approval.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

class signup1 extends StatefulWidget {
  @override
  _signup1State createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  final TextEditingController _password1controller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  String verificationId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('OTP Verification'),
        backgroundColor: Colors.orangeAccent,

      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),

        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  selectedColor: Colors.black,
                  inactiveColor: Colors.grey,
                ),
                animationDuration: Duration(milliseconds: 300),
                onChanged: (otp) {
                  // Handle OTP changes
                  print('Current OTP: $otp');
                },
                beforeTextPaste: (String? text) {
                  // Allow only numeric characters
                  return RegExp(r'^[0-9]*$').hasMatch(text!);
                },
              ),
              SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  // Handle password setting logic

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, // Set the background color here
                ),
                child: Text('verify OTP'),
              ),
              SizedBox(height: 20.0),

              TextField(
                controller: _password1controller,
                obscureText: true,
               decoration: InputDecoration(
                 labelText: 'Enter your password',
              border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
                ),
                ),
               ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Re-Enter your password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),

              ),
              // ElevatedButton(
              //   // onPressed: () async {
              //   //   // Trigger OTP request
              //   //   await _verifyPhoneNumber();
              //   //},
              //   child: Text('Send OTP'),
              // ),
              // SizedBox(height: 20.0),
              // PinFieldAutoFill(
              //   controller: _otpController,
              //   onCodeChanged: (otp) {
              //     // Handle OTP changes
              //   },
              // ),
              SizedBox(height: 20.0),

              ElevatedButton(

                onPressed: () {
                  // Handle password setting logic
                  Get.to(() => approval());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, // Set the background color here
                ),
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}