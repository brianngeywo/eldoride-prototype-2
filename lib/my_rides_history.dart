import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class MyRidesHistory extends StatefulWidget {
  @override
  _MyRidesHistoryState createState() => _MyRidesHistoryState();
}

class _MyRidesHistoryState extends State<MyRidesHistory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, 'My Ride History', context),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _tabController.index == 0
                              ? Colors.blue
                              : Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          setState(() {
                            _tabController.index = 0;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Upcoming',
                            style: TextStyle(
                              color: _tabController.index == 0
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _tabController.index == 1
                              ? Colors.blue
                              : Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          setState(() {
                            _tabController.index = 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Completed',
                            style: TextStyle(
                              color: _tabController.index == 1
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _tabController.index == 2
                              ? Colors.blue
                              : Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          setState(() {
                            _tabController.index = 2;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Canceled',
                            style: TextStyle(
                                color: _tabController.index == 2
                                    ? Colors.white
                                    : Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TripInformationCard("5:00 PM"),
            TripInformationCard("2:00 PM"),
            TripInformationCard("11:00 AM"),
            TripInformationCard("9:00 AM"),
            TripInformationCard("6:00 AM"),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}

Widget TripInformationCard(String time) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
        child: Text(
          'Today, ${time}'.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
          margin: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
          child: TripItemWidget()),
    ],
  );
}

class TripItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0), // Set padding within the widget
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels'
                        '.com/photos/91224/pexels-photo-91224'
                        '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Placeholder for curved square picture
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 4.0),
                        Text('4.8'),
                      ],
                    ),
                  ],
                ),
                VerticalColumnforUserSummary('Final Cost', 'KES 1,500'),
                VerticalColumnforUserSummary('Time', '30 mins'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            mainTravelIndicator('123 Address, Nairobi', '456 Address, Mombasa'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget VerticalColumnforUserSummary(String topText, String bottomText) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        topText,
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      const SizedBox(height: 5.0),
      Text(
        bottomText,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    ],
  );
}

Widget mainTravelIndicator(String pickup, String destination) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TravelIndicatorWidget(pickup, Colors.blue, true),
        const SizedBox(height: 10.0),
        TravelIndicatorWidget(destination, Colors.black, false),
      ],
    ),
  );
}

Widget TravelIndicatorWidget(String text, Color iconColor, bool isPickup) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isPickup ? "Pickup" : "Destination",
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: iconColor),
                  const SizedBox(width: 8.0),
                  Text(
                    "123 Address, Nairobi",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.access_time_outlined, color: iconColor),
                  const SizedBox(width: 8.0),
                  Text(
                    "Today, 9:00 AM",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
