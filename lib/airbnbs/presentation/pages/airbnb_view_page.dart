import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class AirbnbViewPage extends StatefulWidget {
  String airbnbName;
  String airbnbLocation;
  String airbnbPrice;
  String airbnbImage;
  AirbnbViewPage({
    required this.airbnbName,
    required this.airbnbLocation,
    required this.airbnbPrice,
    required this.airbnbImage,
  });

  @override
  State<AirbnbViewPage> createState() => _AirbnbViewPageState();
}

class _AirbnbViewPageState extends State<AirbnbViewPage> {
  int _currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.white, "Airbnb Room", context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CarouselSlider(
            //   items: airbnbImageList.take(5).map((image) {
            //     return Container(
            //       // margin: EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: NetworkImage(widget.airbnbImage),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     );
            //   }).toList(),
            //   options: CarouselOptions(
            //     height: 250.0,
            //     autoPlay: true,
            //     enlargeCenterPage: true,
            //     onPageChanged: (index, reason) {
            //       setState(() {
            //         _currentSlide = index;
            //       });
            //     },
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: airbnbImageList.map((image) {
            //     int index = airbnbImageList.indexOf(image);
            //     return Container(
            //       width: 8.0,
            //       height: 8.0,
            //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: _currentSlide == index ? Colors.blue : Colors.grey,
            //       ),
            //     );
            //   }).toList(),
            // ),
            Image.network(
              widget.airbnbImage,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.airbnbName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${widget.airbnbLocation}, Kenya',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '''Welcome to our stunning beachfront villa in the beautiful coastal town of Malibu. This luxurious property offers the perfect retreat for a relaxing and unforgettable vacation.

Our villa features spacious and elegantly designed rooms, offering breathtaking panoramic views of the sparkling ocean. With direct access to the sandy beach just steps away, you can enjoy sunbathing, swimming, and leisurely walks along the shoreline.

The villa boasts a modern and fully equipped kitchen, allowing you to prepare delicious meals with ease. The stylish living area provides a comfortable space for relaxation and entertainment, equipped with a large flat-screen TV and cozy seating.

Indulge in the serenity of the outdoors with our private patio and outdoor lounge area. Unwind in the bubbling hot tub while sipping your favorite drink and taking in the mesmerizing sunset views. The beautifully landscaped garden provides a tranquil ambiance for outdoor dining and barbecues.

For the ultimate convenience, our villa offers amenities such as high-speed Wi-Fi, air conditioning, and complimentary parking. We also provide beach chairs, umbrellas, and towels for your beach outings.

Located just minutes away from popular attractions and dining establishments, our villa offers easy access to the vibrant Malibu lifestyle. Explore the nearby hiking trails, visit local vineyards, or indulge in a shopping spree at the renowned Malibu Country Mart.

Whether you're seeking a romantic getaway or a fun-filled family vacation, our beachfront villa provides the perfect setting for creating lifelong memories. Book your stay with us today and experience the epitome of luxury and relaxation in Malibu.''',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Amenities',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Wrap(
                    spacing: 10,
                    children: [
                      Chip(label: Text('Wi-Fi')),
                      Chip(label: Text('Parking')),
                      Chip(label: Text('Non-Smoking')),
                      Chip(label: Text('Netflix')),
                      Chip(label: Text('Hot Tub')),
                      Chip(label: Text('Air Conditioning')),
                      Chip(label: Text('Swimming Pool')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kshs ${widget.airbnbPrice} per night',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                              'Book Now',
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
          ],
        ),
      ),
    );
  }
}
