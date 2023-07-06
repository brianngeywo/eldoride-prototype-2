import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';
import 'package:prototype/static_data.dart';

class NearbyDriversPage extends StatefulWidget {
  @override
  State<NearbyDriversPage> createState() => _NearbyDriversPageState();
}

class _NearbyDriversPageState extends State<NearbyDriversPage> {
  ScrollController _scrollController = ScrollController();
  List<Driver> myDrivers = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    myDrivers = drivers;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reach the bottom of the list, load more data
      setState(() {
        // Append more drivers to the existing list
        print(myDrivers.length);
        drivers.addAll(List<Driver>.from(myDrivers));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.white, "Available Drivers", context),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          final driver = drivers[index];
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
                                driver.avatar,
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
                              driver.name,
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
                                  '${driver.distance} km away',
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  '4.8',
                                  style: TextStyle(fontSize: 14),
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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

class Driver {
  final String name;
  final String avatar;
  final double distance;

  Driver({required this.name, required this.avatar, required this.distance});
}
