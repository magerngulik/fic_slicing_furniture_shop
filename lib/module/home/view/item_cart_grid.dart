import 'package:flutter/material.dart';

class FugiItemCardGrid extends StatefulWidget {
  Map itemsProduct;

  FugiItemCardGrid({
    Key? key,
    required this.itemsProduct,
  }) : super(key: key);

  @override
  State<FugiItemCardGrid> createState() => Fugi_ItemCardGridState();
}

class Fugi_ItemCardGridState extends State<FugiItemCardGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "${widget.itemsProduct['photo']}",
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  20.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              "${widget.itemsProduct['product_name']}",
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  "\$${widget.itemsProduct['price']}",
                  style:
                      const TextStyle(fontSize: 20.0, color: Color(0xFF9A9390)),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                size: 20.0,
                color: Colors.orange,
              ),
              Text(
                "${widget.itemsProduct['star']}",
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
