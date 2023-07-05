import 'package:flutter/material.dart';
import 'package:prototype/car_selection_indicator.dart';
import 'package:prototype/trip_confirmation_page.dart';

class EditRideBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _destinationController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Edit Ride",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Divider(),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _destinationController,
              decoration: const InputDecoration(
                hintText: 'Choose new location',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Select new car",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                carSelectionIndicator(
                  context,
                  "assets/car-three-seater.png",
                  "Three Seater",
                  "Ksh 300",
                  true,
                ),
                carSelectionIndicator(
                  context,
                  "assets/car-five-seater.png",
                  "Five Seater",
                  "Ksh 450",
                  false,
                ),
                carSelectionIndicator(
                  context,
                  "assets/car-seven-seater.png",
                  "Seven Seater",
                  "Ksh 720",
                  false,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                showTripConfirmationDetailsModalBottomSheet(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Save Change',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
