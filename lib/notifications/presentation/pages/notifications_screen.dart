import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: true,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: false,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Yesterday",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: true,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: true,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: '9:00 AM',
            time: '',
            isRead: false,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Last Week",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
          NotificationItem(
            title: 'Your Payment of Kshs 540 has been processed successfully',
            subtitle: 'July 9, 20213, 9:00 AM',
            time: '',
            isRead: false,
          ),
        ],
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
      tileColor: isRead ? Colors.grey.shade200 : Colors.white,
      leading: const CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        ),
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
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
