import 'package:flutter/material.dart';
import 'package:prototype/airbnbs/presentation/pages/airbnb_view_page.dart';
import 'package:prototype/my_app_bar.dart';
import 'package:prototype/static_data.dart';

import '../../../airbnb_model.dart';
import '../../../animation_constants.dart';
import '../../../failed_to_load_image_widget.dart';

class AirbnbPropertyListPage extends StatefulWidget {
  const AirbnbPropertyListPage({super.key});

  @override
  State<AirbnbPropertyListPage> createState() => _AirbnbPropertyListPageState();
}

class _AirbnbPropertyListPageState extends State<AirbnbPropertyListPage> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reach the bottom of the list, load more data
      setState(() {
        // Append more drivers to the existing list
        print(airbnbProperties.length);
        airbnbProperties.addAll(List<AirbnbProperty>.from(airbnbProperties));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      appBar: myAppBar(Colors.white, "Available AirBnbs", context),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: airbnbProperties.length,
        itemBuilder: (context, index) {
          AirbnbProperty property = airbnbProperties[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                AirbnbViewPage(
                  airbnbName: property.title,
                  airbnbLocation: property.location,
                  airbnbPrice: property.price.toString(),
                  airbnbImage: property.imageUrl,
                ),
              ));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    property.imageUrl.isNotEmpty
                        ? ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                image: DecorationImage(
                                  image: NetworkImage(
                                    property.imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        : const FailedToLoadImageWidget(
                            height: 150,
                            width: double.infinity,
                          ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            property.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            property.location,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '\$${property.price.toString()} / night',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
