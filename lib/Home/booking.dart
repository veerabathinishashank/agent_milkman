import 'package:flutter/material.dart';

class booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Your Page Title'),
      // ),
      body: Column(
        children: [
          Orders(
            orderName: 'Example Order 1',
            numberOfOrders: 3,
            secondTitle: 'Additional Information 1',
          ),
          SizedBox(height: 10),
          Orders(
            orderName: 'Example Order 2',
            numberOfOrders: 5,
            secondTitle: 'Additional Information 2',
          ),
        ],
      ),
    );
  }
}

class Orders extends StatelessWidget {
  final String orderName;
  final int numberOfOrders;
  final String secondTitle;

  Orders({
    required this.orderName,
    required this.numberOfOrders,
    required this.secondTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          width: double.infinity, // Set width to fit the screen size
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                SizedBox(height: 8),
                Text('Number of orders: $numberOfOrders'),
                Text(secondTitle),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('More details'),
                          ),
                        );
                      },
                      icon: Icon(Icons.info),
                      label: Text('Details'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Accepted $orderName'),
                          ),
                        );
                      },
                      child: Text('Accept'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Rejected $orderName'),
                          ),
                        );
                      },
                      child: Text('Reject'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: booking(),
  ));
}
