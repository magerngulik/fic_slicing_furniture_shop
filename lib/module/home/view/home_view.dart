import 'package:fhe_template/module/home/view/title_submenu_fugi.dart';
import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import '../widget/heading_fugi.dart';
import 'item_cart_grid.dart';
import 'menu_category_fugi.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    List products = [
      {
        "photo":
            "https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        "product_name": "Stylish Chair",
        "price": 170,
        "category": "Furniture",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "star": 4.8
      },
      {
        "photo":
            "https://images.unsplash.com/photo-1501045661006-fcebe0257c3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1vZGVyZW4lMjBjaGFpcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
        "product_name": "Moderen Tabel",
        "price": 75,
        "category": "Furniture",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "star": 4.9
      },
      {
        "photo":
            "https://images.unsplash.com/photo-1580480055273-228ff5388ef8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hhaXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
        "product_name": "Wooden Console",
        "price": 240,
        "category": "Furniture",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "star": 4.7
      },
      {
        "photo": "https://i.ibb.co/sVFGcbb/image.png",
        "product_name": "Brown Armchair",
        "price": 210,
        "category": "Furniture",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "star": 4.9
      },
    ];

    List menuItem = [
      "All",
      "Living Room",
      "Bedroom",
      "Dining Room",
      "Kichen Room"
    ];
    String selected = "All";

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: const Icon(
          Icons.menu_sharp,
          color: Colors.black,
          size: 24.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const heading_fugi(),
              MenuCategory(
                menuItem: const [
                  "All",
                  "Living Room",
                  "Bedroom",
                  "Dining Room",
                  "Kichen Room"
                ],
              ),
              const TitleSubMenu(
                title: "Recommended Furniture",
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 185 / 243),
                  itemCount: products.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var itemsProduct = products[index];
                    return FugiItemCardGrid(
                      itemsProduct: itemsProduct,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
