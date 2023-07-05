import 'package:flutter/material.dart';
import 'package:prototype/car_selection_indicator.dart';
import 'package:prototype/credit_card_payment_section.dart';
import 'package:prototype/estimated_fare_widget.dart';
import 'package:prototype/my_rides_history.dart';
import 'package:prototype/trip_confirmation_page.dart';

void showCarSelectionModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        "Trip Details",
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
                mainTravelIndicator(
                  "245 Pioneer, Eldoret",
                  "Jerusalem, Eldoret",
                ),
                const SizedBox(height: 20),
                const Text(
                  "Suggested Cars",
                  textAlign: TextAlign.left,
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
                        "KDC 234F",
                        true,
                      ),
                      carSelectionIndicator(
                        context,
                        "assets/car-five-seater.png",
                        "Five Seater",
                        "KAC 234F",
                        false,
                      ),
                      carSelectionIndicator(
                        context,
                        "assets/car-seven-seater.png",
                        "Seven Seater",
                        "KCA 234F",
                        false,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Estimated Fare",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                EstimatedFareWidget(
                  distance: 10.5, // Example distance in kilometers
                  baseFare: 5.0, // Example base fare amount
                  perKmFare: 120, // Example fare per kilometer
                  totalFare: 1200.25, // Example total fare amount
                ),
                const SizedBox(height: 10),
                creditCardPaymentSection(),
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
                            'Book now',
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
          ),
        );
      });
}
