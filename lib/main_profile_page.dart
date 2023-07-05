import 'package:flutter/material.dart';
import 'package:prototype/edit_profile_screen.dart';
import 'package:prototype/main_settings_screen.dart';
import 'package:prototype/my_rides_history.dart';
import 'package:prototype/payment_screen.dart';
import 'package:simple_icons/simple_icons.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/maps.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 5.0),
                          const Text(
                            'Emmanuel Korir',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle "Edit Profile" button tap
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EditProfilePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      // leading: const Icon(Icons.directions_car),
                      title: const Text(
                        'My Rides',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Handle my rides section tap
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
                        'Payments',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Handle payment section tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      // leading: const Icon(Icons.settings),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Handle settings section tap
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
                          color: Colors.black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Handle help section tap
                      },
                    ),
                    ListTile(
                      // leading: const Icon(Icons.info),
                      title: const Text(
                        'About',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Handle about section tap
                      },
                    ),
                    ListTile(
                      title: const Text('Logout',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          )),
                      onTap: () {
                        // Handle log out button tap
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Social Media',
                        style: TextStyle(
                          // fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Handle log out section tap
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        SimpleIcons.facebook,
                        color: Colors.blue,
                      ),
                      title: const Text('Facebook'),
                      onTap: () {
                        // Handle Facebook button tap
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        SimpleIcons.google,
                        color: Colors.red,
                      ),
                      title: const Text('Google'),
                      onTap: () {
                        // Handle Google button tap
                      },
                    ),
                    // Add more buttons for other social media platforms as needed
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 75.0,
                height: 75.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.pexels'
                      '.com/photos/91224/pexels-photo-91224'
                      '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ), // Path to the profile picture image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
