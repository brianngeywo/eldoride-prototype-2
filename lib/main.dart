import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTripsPage();
  }
}

class MyTripsPage extends StatefulWidget {
  @override
  _MyTripsPageState createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage>
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
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'My Trips',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          const SizedBox(
              height: 16.0), // Add spacing between the text and the tabs
          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: [
              Card(
                margin: EdgeInsets.all(2.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10)), // Add padding around each tab
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                    child: Tab(text: 'Upcoming')),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(2.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.32,
                  child: const Tab(text: 'Completed'),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(2.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                    child: const Tab(text: 'Canceled')),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          TripItemWidget(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.white,
                  child: const Center(
                    child: Text('Upcoming trips content'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.white,
                  child: const Center(
                    child: Text('Completed trips content'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.white,
                  child: const Center(
                    child: Text('Canceled trips content'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TripItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0), // Set margin around the widget
      padding: const EdgeInsets.all(16.0), // Set padding within the widget
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 64.0,
                height: 64.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                // Placeholder for curved square picture
              ),
              const SizedBox(width: 8.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4.0),
                      Text('4.8'),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 8.0),
              const Column(
                children: [
                  Text(
                    '\$50',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8.0),
              const Column(
                children: [
                  Text(
                    '30 mins',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          TravelIndicatorWidget(),
          const SizedBox(height: 16.0),
          const Row(
            children: [
              Icon(Icons.place),
              SizedBox(width: 4.0),
              Text('Destination'),
              SizedBox(width: 8.0),
              Column(
                children: [
                  Text(
                    '30 mins',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TravelIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.location_on),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'From',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('123 Main St'),
              Text('9:00 AM'),
            ],
          ),
        ),
        SizedBox(width: 8.0),
        Icon(Icons.more_horiz),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('456 Elm St'),
              Text('9:30 AM'),
            ],
          ),
        ),
      ],
    );
  }
}
