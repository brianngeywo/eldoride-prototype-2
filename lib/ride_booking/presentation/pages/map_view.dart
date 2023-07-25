import 'package:flutter/material.dart';
import 'package:prototype/custom_drawer.dart';
import 'package:prototype/ride_booking/presentation/pages/drop_off_or_pickup_screen.dart';
import 'package:remixicon/remixicon.dart';

import '../../../user_profile/presentation/pages/main_profile_page.dart';

class MainMapViewPage extends StatelessWidget {
  const MainMapViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/map1.png'),
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 23,
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 200,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: Icon(
                Icons.gps_fixed_rounded,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          Positioned(
              bottom: 130,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Icon(
                                Remix.menu_4_fill,
                                color: Colors.black,
                                size: 27,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://images.pexels'
                          '.com/photos/91224/pexels-photo-91224'
                          '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        ),
                      ),
                    );
                  })
                ],
              )),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            //search text field
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          showDropOffAndPickupTextFieldModalBottomSheet(context);
                        },
                        child: const TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            hintText: 'Where do you want to go?',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDropOffAndPickupTextFieldModalBottomSheet(context);
                      },
                      child: const Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
