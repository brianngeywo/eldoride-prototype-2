import 'package:flutter/material.dart';

class FailedToLoadImageWidget extends StatelessWidget {
  final double height;
  final double width;

  const FailedToLoadImageWidget({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
    );
  }
}
