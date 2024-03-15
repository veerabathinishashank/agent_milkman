import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:retailerusinggetx/signup1.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(


          title: Text('Enter the Details'),
          backgroundColor: Colors.orangeAccent,

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous screen
              Get.back();
            },
          ),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends GetWidget {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final numberController = TextEditingController();
  final aadhaarTypeController = TextEditingController();
  final panCardController = TextEditingController();
  final panCardPhotoController = TextEditingController();

  // Method to handle photo uploading
  void uploadPanCardPhoto() {
    // Implement photo uploading logic here
    // Update panCardPhotoController with the uploaded photo details
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: textController1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Name',
                    hintText: 'Enter your full name',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: textController2,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: numberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Phone No.',
                    hintText: 'Enter your Phone No.',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: 16),
                TextField(
                  controller: aadhaarTypeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Aadhaar Number',
                    hintText: 'Enter Aadhaar Number',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: 16),
                TextField(
                  controller: panCardController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'PAN Card Number',
                    hintText: 'Enter PAN Card Number',
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 16),

                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.orangeAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  ),
                  onPressed: () {
                    Get.to(() => signup1(), arguments: {
                      'panCardNumber': panCardController.text,
                      'panCardPhotoPath': panCardPhotoController.text,
                    });
                  },

                  child: Text('Next'),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
