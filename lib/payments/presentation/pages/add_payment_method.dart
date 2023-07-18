import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class AddCardPaymentMethodPage extends StatelessWidget {
  const AddCardPaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, 'Payments', context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Payment Method',
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Card Number',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Cardholder Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Expiry Date',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  // showCarSelectionModalBottomSheet(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    boxShadow: [
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
                        'Add Payment Method',
                        style: TextStyle(
                          color: Colors.white,
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
  }
}

class AddPaymentMethodPage extends StatefulWidget {
  const AddPaymentMethodPage({Key? key}) : super(key: key);

  @override
  _AddPaymentMethodPageState createState() => _AddPaymentMethodPageState();
}

class _AddPaymentMethodPageState extends State<AddPaymentMethodPage> {
  TextEditingController _mpesaNumberController = TextEditingController();

  @override
  void dispose() {
    _mpesaNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Add Payment Method", context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'M-Pesa Payment Method',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'To add a new M-Pesa payment method, a verification process will be initiated, and 20 Ksh will be charged to your M-Pesa account. Please ensure you have sufficient funds.',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                controller: _mpesaNumberController,
                decoration: const InputDecoration(
                  hintText: "Enter M-Pesa number",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
                initiateVerificationProcess(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Initiate Verification Process'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initiateVerificationProcess(BuildContext context) {
    String mpesaNumber = _mpesaNumberController.text.trim();

    if (mpesaNumber.isNotEmpty) {
      // Implement the logic for initiating the verification process
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Text('Verification Process'),
            content: const Text(
              'The verification process has been initiated. 20 Ksh will be charged to your M-Pesa account. Please check your M-Pesa messages for further instructions.',
            ),
            actions: [
              TextButton(
                child: const Text('OK', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('Continue'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please enter a valid M-Pesa number.'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
