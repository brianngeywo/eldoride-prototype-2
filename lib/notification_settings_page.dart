import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class NotificationSettingsScreen extends StatefulWidget {
  @override
  _NotificationSettingsScreenState createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool receiveNotifications = true;
  bool enableEmailNotifications = true;
  bool enableSMSNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, 'Notification Settings', context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification Preferences',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              title: const Text('Receive Notifications'),
              trailing: Switch(
                activeColor: Colors.green,
                value: receiveNotifications,
                onChanged: (value) {
                  setState(() {
                    receiveNotifications = value;
                  });
                  if (value == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Notifications Enabled'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Notifications Disabled'),
                      ),
                    );
                    setState(() {
                      enableEmailNotifications = false;
                      enableSMSNotifications = false;
                    });
                  }
                },
              ),
            ),
            const Divider(),
            const Text(
              'Notification Channels',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text('Email Notifications'),
              trailing: Switch(
                activeColor: Colors.green,
                value: enableEmailNotifications,
                onChanged: (value) {
                  setState(() {
                    enableEmailNotifications = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('SMS Notifications'),
              trailing: Switch(
                activeColor: Colors.green,
                value: enableSMSNotifications,
                onChanged: (value) {
                  setState(() {
                    enableSMSNotifications = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
