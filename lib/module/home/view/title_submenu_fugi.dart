import 'package:flutter/material.dart';

class TitleSubMenu extends StatefulWidget {
  final String title;

  const TitleSubMenu({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<TitleSubMenu> createState() => _TitleSubMenuState();
}

class _TitleSubMenuState extends State<TitleSubMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
