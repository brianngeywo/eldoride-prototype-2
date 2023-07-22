import 'package:flutter/material.dart';

class EmergencyContactsScreen extends StatelessWidget {
  const EmergencyContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Emergency Contacts",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomSheet: Container(
        width: double.infinity,
        color: Colors.black,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Add new contact",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: emergencyContacts.length,
              itemBuilder: (context, index) {
                EmergencyContact emergencyContact = emergencyContacts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    enabled: false,
                    title: Text(
                      emergencyContact.name,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      emergencyContact.number,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class EmergencyContact {
  final String number;
  final String name;

  EmergencyContact({
    required this.number,
    required this.name,
  });

  Map<String, dynamic> toMap(EmergencyContact contact) {
    return {
      "number": contact.number,
      "name": contact.name,
    };
  }

  EmergencyContact fromMap(Map<String, dynamic> map) {
    return EmergencyContact(
      number: "number",
      name: "name",
    );
  }
}

List<EmergencyContact> emergencyContacts = [
  EmergencyContact(
    number: "0789324345",
    name: "Sister",
  ),
  EmergencyContact(
    number: "0789324345",
    name: "Mum",
  ),
  EmergencyContact(
    number: "0789324345",
    name: "Dad",
  ),
];
