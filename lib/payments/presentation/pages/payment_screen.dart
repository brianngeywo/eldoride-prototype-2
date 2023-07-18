import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

// import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

import '../controllers/payments_controller.dart';
import 'add_payment_method.dart';

class PaymentScreen extends StatelessWidget {
  final PaymentsController? paymentsController;

  const PaymentScreen({Key? key, this.paymentsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Wallet", context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
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
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.phone_android, color: Colors.green),
              ),
              title: const Text(
                'M-Pesa Mobile payment',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text('+254 712 345 678'),
              trailing: const Icon(Icons.check_circle, color: Colors.blue),
              onTap: () {
                // initiateMpesaPayment(context);
              },
            ),
            const SizedBox(height: 16.0),
            const Divider(),
            ListTile(
              textColor: Colors.blue,
              iconColor: Colors.blue,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.add,
                  weight: 20,
                ),
              ),
              title: const Text(
                'Add New Payment Method',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddPaymentMethodPage(),
                  ),
                );
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
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.history),
              ),
              title: const Text('M-Pesa - July 1, 2023'),
              subtitle: const Text('Kshs 1050.50'),
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
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.history),
              ),
              title: const Text('M-Pesa - June 28, 2023'),
              subtitle: const Text('Kshs 750.75'),
              onTap: () {
                // Handle viewing the details of this transaction
              },
            ),
            const Divider(),
            // Add more billing history items he
          ],
        ),
      ),
    );
  }

// void initiateMpesaPayment(BuildContext context) async {
//   try {
//     MpesaFlutterPlugin.setConsumerKey("YOUR_CONSUMER_KEY");
//     MpesaFlutterPlugin.setConsumerSecret("YOUR_CONSUMER_SECRET");
//
//     dynamic transactionInitialisation = await MpesaFlutterPlugin.initializeMpesaSTKPush(
//       businessShortCode: "YOUR_BUSINESS_SHORT_CODE",
//       transactionType: "CustomerPayBillOnline",
//       amount: 100.0,
//       partyA: "CUSTOMER_PHONE_NUMBER",
//       partyB: "YOUR_BUSINESS_SHORT_CODE",
//       callBackURL: "YOUR_CALLBACK_URL",
//       accountReference: "YOUR_ACCOUNT_REFERENCE",
//       phoneNumber: "CUSTOMER_PHONE_NUMBER",
//       baseUri: "YOUR_BASE_URI",
//       transactionDesc: "YOUR_TRANSACTION_DESCRIPTION",
//       passKey: "YOUR_PASSKEY",
//     );
//
//     if (transactionInitialisation is Map) {
//       dynamic customerMessage = transactionInitialisation['CustomerMessage'];
//       if (customerMessage != null) {
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Payment Initiated'),
//               content: Text(customerMessage),
//               actions: [
//                 TextButton(
//                   child: const Text('OK'),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   } catch (e) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Error'),
//           content: Text('An error occurred during payment initiation: $e'),
//           actions: [
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
}
