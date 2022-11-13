import 'package:flutter/material.dart';

class MenuCategory extends StatefulWidget {
  List menuItem;
  MenuCategory({required this.menuItem, Key? key}) : super(key: key);

  @override
  State<MenuCategory> createState() => _MenuCategoryState();
}

class _MenuCategoryState extends State<MenuCategory> {
  @override
  Widget build(BuildContext context) {
    String selected = "All";
    return Container(
      margin: const EdgeInsets.only(left: 14.0, top: 30, bottom: 30),
      height: 40.0,
      child: ListView.builder(
        itemCount: widget.menuItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var items = widget.menuItem[index];
          return InkWell(
            onTap: () {
              selected = items;
              setState(() {});
            },
            child: Container(
              width: 100.0,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: (selected == items)
                    ? const Color(0xFF9A9390)
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Text(
                  "$items",
                  style: TextStyle(
                    color: (selected == items)
                        ? Colors.white
                        : const Color(0xFF4A4543),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
