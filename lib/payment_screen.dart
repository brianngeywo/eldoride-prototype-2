import 'package:flutter/material.dart';
import 'package:prototype/add_payment_method.dart';
import 'package:prototype/my_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Payments", context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment Methods',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              tileColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.credit_card, color: Colors.black),
              title: const Text(
                '**** **** **** 1234',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text('Visa'),
              trailing: const Icon(Icons.check_circle, color: Colors.blue),
              onTap: () {
                // Handle selecting this payment method
              },
            ),
            SizedBox(height: 16.0),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.credit_card, color: Colors.black),
              title: const Text('**** **** **** 5678'),
              subtitle: const Text('Mastercard'),
              trailing: const Icon(Icons.circle, color: Colors.grey),
              onTap: () {
                // Handle selecting this payment method
              },
            ),
            // SizedBox(height: 16.0),
            // CreditCardWidget(
            //   cardNumber: '**** **** **** 1234', // Example card number
            //   cardHolderName: 'Emmanuel Korir', // Example card holder name
            //   expiryDate: '12/25', // Example expiry date
            //   cvv: '***', // Example CVV
            // ),
            // SizedBox(height: 16.0),
            // CreditCardWidget(
            //   cardNumber: '**** **** **** 1234', // Example card number
            //   cardHolderName: 'Emmanuel Korir', // Example card holder name
            //   expiryDate: '12/25', // Example expiry date
            //   cvv: '***', // Example CVV
            // ),
            const SizedBox(height: 16.0),
            const Divider(),
            ListTile(
              textColor: Colors.blue,
              iconColor: Colors.blue,
              leading: const Icon(
                Icons.add,
                weight: 20,
              ),
              title: const Text(
                'Add New Payment Method',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Handle adding a new payment method
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddPaymentMethodPage()));
              },
            ),
            const Divider(),
            const SizedBox(height: 16.0),
            const Text(
              'Billing History (Last 30 Days)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberX - July 1, 2023'),
              subtitle: const Text('\$25.50'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberPool - June 28, 2023'),
              subtitle: const Text('\$12.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberPool - June 28, 2023'),
              subtitle: const Text('\$12.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberPool - June 28, 2023'),
              subtitle: const Text('\$12.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberPool - June 28, 2023'),
              subtitle: const Text('\$12.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            ListTile(
              iconColor: Colors.black,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(Icons.history),
              title: const Text('UberPool - June 28, 2023'),
              subtitle: const Text('\$12.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
          ],
        ),
      ),
    );
  }
}
