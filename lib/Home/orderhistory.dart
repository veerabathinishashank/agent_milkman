import 'package:flutter/material.dart';

class orderhistory extends StatefulWidget {
  const orderhistory({super.key});

  @override
  State<orderhistory> createState() => _orderhistoryState();
}

class _orderhistoryState extends State<orderhistory> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        title: Text('Order History'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Received'),
              Tab(text: 'Rejected'),
              Tab(text: 'Ongoing'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                AllPage(),
                ReceivedPage(),
                RejectedPage(),
                OngoingPage(),
              ],
            ),
          ),
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
