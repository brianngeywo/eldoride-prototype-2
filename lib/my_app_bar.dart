import 'package:flutter/material.dart';

AppBar myAppBar(Color color, String title, BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    elevation: 0.0,
    backgroundColor: color,
  );
}
