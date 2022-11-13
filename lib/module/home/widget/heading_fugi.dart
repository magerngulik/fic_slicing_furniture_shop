import 'package:flutter/material.dart';

class heading_fugi extends StatelessWidget {
  const heading_fugi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14.0, top: 32),
      height: 60,
      width: 226,
      child: const Text(
        "Discover the most moderen furniture",
        maxLines: 2,
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }
}
