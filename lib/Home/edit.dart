import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  _editprofileState createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name:',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Shop Name:',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: shopNameController,
                decoration: InputDecoration(
                  hintText: 'Enter your shop name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Address:',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: addressController,
                maxLines: 3,  // Set maxLines to allow multiple lines
                decoration: InputDecoration(
                  hintText: 'Enter your address',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Pin Code:',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: pinCodeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your pin code',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Access the entered values using the controllers
                  String name = nameController.text;
                  String shopName = shopNameController.text;
                  String address = addressController.text;
                  String pinCode = pinCodeController.text;
        
                  // You can now use these values as needed (e.g., update user profile)
                  print('Name: $name, Shop Name: $shopName, Address: $address, Pin Code: $pinCode');
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: editprofile(),
  ));
}
