import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Notifications", context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: [
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, Martha Tamnai,\nis on the way',
              time: 'Yesterday',
              isRead: false,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, Emmanuel Korir,\nis on the way',
              time: 'Yesterday',
              isRead: false,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, Jane Chebet,\nis on the way',
              time: 'Yesterday',
              isRead: true,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, June Tinda,\nis on the way',
              time: 'Yesterday',
              isRead: true,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, Brian Opicho,\nis on the way',
              time: 'Yesterday',
              isRead: true,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            NotificationItem(
              title: 'Driver Update',
              subtitle: 'Your driver, Tony Otieno,\nis on the way',
              time: 'Yesterday',
              isRead: true,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            // Add more NotificationItems as needed
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final bool isRead;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: isRead ? Colors.white : Colors.grey[200],
      leading: Icon(
        Icons.notifications,
        color: isRead ? Colors.white : Colors.blue,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
      trailing: Text(
        time,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }
}
