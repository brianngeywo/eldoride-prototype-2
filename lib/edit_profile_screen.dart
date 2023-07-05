import 'package:flutter/material.dart';
import 'package:prototype/main_profile_page.dart';
import 'package:prototype/my_app_bar.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String fullName = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
  DateTime selectedDate = DateTime.now();
  String gender = 'Male';
  String address = '';
  String city = '';
  String state = '';
  String zipCode = '';
  String country = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, 'Edit your account', context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Builder(builder: (context) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://images.pexels'
                          '.com/photos/91224/pexels-photo-91224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Emmanuel Korir',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                );
              }),
            ),

            const SizedBox(height: 16.0),

            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Full Name',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    fullName = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 16.0),

            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),

            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 16.0),

            // Date of Birth
            ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              title: const Text(
                'Date of Birth',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text('${selectedDate.toLocal()}'.split(' ')[0]),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
            ),

            const SizedBox(height: 16.0),

            // Gender
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: DropdownButtonFormField<String>(
                dropdownColor: Colors.white,
                value: gender,
                decoration: const InputDecoration(
                  labelText: 'Gender',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
                items: ['Male', 'Female', 'Other'].map((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
            ),

            const SizedBox(height: 16.0),

            // Address
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Home Address',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'City',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'State',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),

            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Country',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    country = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Zip Code',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    zipCode = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
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
                        'Save Changes',
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
  }
}
