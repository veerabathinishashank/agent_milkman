import 'package:flutter/material.dart';
class orders extends StatefulWidget {
  @override
  _ordersState createState() => _ordersState();
}

class _ordersState extends State<orders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
          controller: _tabController,
          tabs: [

            Tab(text: 'All'),
            Tab(text: 'Received'),
            Tab(text: 'Rejected'),
            Tab(text: 'Ongoing'),
          ],
        ),

      body: TabBarView(
        controller: _tabController,
        children: [

          AllPage(),
          ReceivedPage(),
          RejectedPage(),
          OngoingPage(),
        ],
      ),
    );
  }
}

class ReceivedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Received Page Content'),
    );
  }
}

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('All Page Content'),
    );
  }
}

class RejectedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Rejected Page Content'),
    );
  }
}

class OngoingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Ongoing Page Content'),
    );
  }
}
