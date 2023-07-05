import 'package:flutter/material.dart';
import 'package:prototype/homescreen.dart';
import 'package:prototype/main_profile_page.dart';
import 'package:prototype/main_settings_screen.dart';
import 'package:prototype/my_rides_history.dart';
import 'package:prototype/notification_settings_page.dart';
import 'package:prototype/payment_screen.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ListTile(
              // leading: const Icon(Icons.directions_car),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Handle Your Trips button press
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              // leading: const Icon(Icons.directions_car),
              title: const Text(
                'Your Trips',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Handle Your Trips button press
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyRidesHistory(),
                  ),
                );
              },
            ),
            ListTile(
              // leading: const Icon(Icons.payment),
              title: const Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
            ),
            ListTile(
              // leading: const Icon(Icons.notifications),
              title: const Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navigate to the notification settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationSettingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              // leading: const Icon(Icons.settings),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainSettingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              // leading: const Icon(Icons.help),
              title: const Text(
                'Help',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Handle Help button press
              },
            ),
            const Expanded(
              child: SizedBox(),
            ),
            ListTile(
              // leading: const Icon(Icons.logout),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
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
