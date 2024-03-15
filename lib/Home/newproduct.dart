import 'package:flutter/material.dart';

class newproduct extends StatefulWidget {
  const newproduct({super.key});

  @override
  State<newproduct> createState() => _newproductState();
}

class _newproductState extends State<newproduct> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter product name',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Price: ',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: 'Enter product price',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Description: ',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter product description',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Access the entered values using the controllers
                  String name = nameController.text;
                  double price = double.parse(priceController.text);
                  String description = descriptionController.text;

                  // Create a new Product object with the entered values
                  Product newProduct = Product(name: name, price: price, description: description);

                  // Use the newProduct object as needed
                  print(newProduct);
                },
                child: Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}
