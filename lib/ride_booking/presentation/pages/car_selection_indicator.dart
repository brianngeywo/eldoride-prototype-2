import 'package:flutter/material.dart';

Widget carSelectionIndicator(BuildContext context, String image, String name,
    String price, bool isSelected) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.38,
    height: 150,
    margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
    child: Card(
      color: isSelected ? Colors.blue : Colors.grey[200],
      elevation: isSelected ? 10 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset(
                  image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
