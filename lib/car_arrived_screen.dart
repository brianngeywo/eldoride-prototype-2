import 'package:flutter/material.dart';
import 'package:prototype/ride_booking/presentation/pages/map_view.dart';

class DriverArrivedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: myAppBar(Colors.white, "", context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MainMapViewPage(),
              ),
            );
          },
        ),
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),

      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle the "Call Driver" button action
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                side: const BorderSide(color: Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Call Driver',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the "Locate Car" button action
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainMapViewPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                side: const BorderSide(color: Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Locate Car',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            // Add more buttons here as needed
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // padding: const EdgeInsets.all(16.0),
                children: [
                  const Text(
                    'Your Driver has Arrived!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Plate Number',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'ABC123',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Type',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '5 Seater',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Color',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Black',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 100.0),
                  Image.asset(
                    'assets/car-five-seater.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 150.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
