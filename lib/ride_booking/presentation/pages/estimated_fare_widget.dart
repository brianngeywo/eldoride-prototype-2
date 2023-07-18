import 'package:flutter/material.dart';

class EstimatedFareWidget extends StatelessWidget {
  final double distance; // Distance in kilometers
  final double baseFare; // Base fare amount
  final double perKmFare; // Fare per kilometer
  final double totalFare; // Total fare amount

  EstimatedFareWidget({
    required this.distance,
    required this.baseFare,
    required this.perKmFare,
    required this.totalFare,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Distance:'),
                Text('${distance.toStringAsFixed(2)} km'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Base Fare:'),
                Text('\$${baseFare.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Per Kilometer Fare:'),
                Text('Ksh ${perKmFare.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Fare:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ksh ${totalFare.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
