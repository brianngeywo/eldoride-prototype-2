import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';
import 'package:prototype/static_data.dart';

class RecentLocationsPage extends StatefulWidget {
  @override
  _RecentLocationsPageState createState() => _RecentLocationsPageState();
}

class _RecentLocationsPageState extends State<RecentLocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.white, "Your locations", context),
      body: ListView.builder(
        itemCount: recentLocations.length,
        itemBuilder: (context, index) {
          final location = recentLocations[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            elevation: 0.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(
                                location.image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              location.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.location_on,
                                    color: Colors.black54, size: 14),
                                Text(
                                  location.distance,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                const SizedBox(width: 4.0),
                                Text(
                                  location.rating.toString(),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // card image and model and number
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //car image
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  carImages[Random().nextInt(carImages.length)],
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Text(
                            'KDS 1234',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                  child: Divider(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Location {
  final String name;
  final String image;
  final String distance;
  final bool isFavorite;
  final double rating;
  final String carImage;
  final String plateNumber;

  Location({
    required this.name,
    required this.image,
    required this.distance,
    required this.isFavorite,
    required this.rating,
    required this.carImage,
    required this.plateNumber,
  });
}
