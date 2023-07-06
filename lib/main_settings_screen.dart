import 'package:flutter/material.dart';
import 'package:prototype/change_password_screen.dart';
import 'package:prototype/edit_profile_screen.dart';
import 'package:prototype/main_profile_page.dart';
import 'package:prototype/my_app_bar.dart';
import 'package:prototype/notification_settings_page.dart';
import 'package:prototype/payment_screen.dart';

import 'language_screen_settings.dart';

class MainSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Settings", context),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Center(
            child: Builder(builder: (context) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://images.pexels'
                        '.com/photos/91224/pexels-photo-91224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'View Profile',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: const Text('Edit Profile',
                style: TextStyle(
                  color: Colors.black,
                )),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14.0,
              color: Colors.black,
            ),
            onTap: () {
              // Navigate to the profile settings screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.lock,
              color: Colors.black,
            ),
            title: const Text(
              'Change Password',
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
              // Navigate to the change password screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            title: const Text(
              'Notification Settings',
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
            leading: const Icon(
              Icons.payment,
              color: Colors.black,
            ),
            title: const Text(
              'Payment Methods',
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
              // Navigate to the payment methods screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.language,
              color: Colors.black,
            ),
            title: const Text(
              'Language Selection',
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
              // Navigate to the language selection screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageSelectionScreen(),
                ),
              );
            },
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.privacy_tip,
          //     color: Colors.black,
          //   ),
          //   title: const Text(
          //     'Privacy Settings',
          //     style: TextStyle(
          //       color: Colors.black,
          //     ),
          //   ),
          //   trailing: const Icon(
          //     Icons.arrow_forward_ios_rounded,
          //     size: 14.0,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          //     // Navigate to the privacy settings screen
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PrivacySettingsScreen(),
          //       ),
          //     );
          //   },
          // ),
          // Add more list tiles for additional settings
        ],
      ),
    );
  }
}

class PrivacySettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Settings'),
      ),
      // Add your privacy settings UI here
    );
  }
}
