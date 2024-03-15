import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:retailerusinggetx/Home/Homescreen.dart';
import 'package:retailerusinggetx/Home/booking.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:retailerusinggetx/Home/home1.dart';
import 'package:retailerusinggetx/Home/notification.dart';
import 'package:retailerusinggetx/Home/orders.dart';
import 'package:retailerusinggetx/Home/profile.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retailer'),
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Get.to(() => notification());
            },
          ),
        ],
      ),
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 15, color: Colors.black.withOpacity(0.1)),
          ],
        ),
        child: SafeArea(
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 20,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            duration: const Duration(milliseconds: 500),
            tabBackgroundColor: Colors.orangeAccent,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.assignment,
                text: 'Booking Status',
              ),
              GButton(

                icon: Icons.shopping_cart,
                text: 'Order Status',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
      // Home screen content
        return home1App();
      case 1:
      // Booking Status screen content
        return booking();
      case 2:
      // Order Status screen content
        return orders();
      case 3:
      // Profile screen content
        return profile();
      default:
        return const Center(
          child: Text('Unknown Screen'),
        );
    }
  }
}

