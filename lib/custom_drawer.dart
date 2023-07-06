import 'package:flutter/material.dart';
import 'package:prototype/homescreen.dart';
import 'package:prototype/main_profile_page.dart';
import 'package:prototype/main_settings_screen.dart';
import 'package:prototype/my_rides_history.dart';
import 'package:prototype/notifications_screen.dart';
import 'package:prototype/payment_screen.dart';
import 'package:prototype/recent_locations.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors
                  .white, // Set the background color of the header to white
              child: UserAccountsDrawerHeader(
                accountName: const Text(
                  'Emmanuel Korir',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  'view profile',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels'
                    '.com/photos/91224/pexels-photo-91224'
                    '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ), // Replace
                  // with your own profile image
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                arrowColor: Colors.white,
                onDetailsPressed: () {
                  // Handle edit profile button press
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyRidesHistory(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Your Trips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RecentLocationsPage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Recent Locations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainSettingsScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
              child: Text(
                'Help',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
              child: Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              // leading: const Icon(Icons.logout),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              onTap: () {
                // Handle Log Out button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
