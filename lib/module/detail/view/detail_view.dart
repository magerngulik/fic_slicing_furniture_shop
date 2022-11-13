import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../../services/color_services.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);
  // https://i.ibb.co/GpfBHhB/image.png

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,
              size: 24.0, color: Color(0xFF4A4543)),
        ),
        centerTitle: true,
        title: Text(
          "Detail",
          style: GoogleFonts.poppins(color: const Color(0xFF4A4543)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: const Icon(
              Icons.favorite_border,
              color: Colors.red,
              size: 24.0,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          const Icon(
            Icons.share,
            size: 24.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 442.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/GpfBHhB/image.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 420,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 414.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          40.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 29.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 23.0,
                            ),
                            Container(
                              height: 33.0,
                              width: 284.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Wooden Coff ",
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            const Text(
                              "\$240",
                              style: TextStyle(
                                fontSize: 26.0,
                              ),
                            ),
                            const SizedBox(
                              width: 26.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9.0,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 23.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21.0,
                        ),
                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     const SizedBox(
                        //       width: 23.0,
                        //     ),
                        //     Container(
                        //       height: 25.0,
                        //       width: 104,
                        //       decoration: const BoxDecoration(
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(
                        //             16.0,
                        //           ),
                        //         ),
                        //       ),
                        //       child: Text("Choose a color",
                        //           style: GoogleFonts.poppins(
                        //               color: Colors.black, fontSize: 12)),
                        //     ),
                        //     const Spacer(),
                        //     const CircleAvatar(
                        //       radius: 15,
                        //       backgroundColor: Colors.grey,
                        //       child: CircleAvatar(
                        //           radius: 12,
                        //           backgroundColor: Colors.white,
                        //           child: CircleAvatar(
                        //             radius: 10,
                        //             backgroundColor: Colors.grey,
                        //           )),
                        //     ),
                        //     const CircleAvatar(
                        //       radius: 12,
                        //       backgroundColor: Color(0xFFEEA427),
                        //     ),
                        //     const SizedBox(
                        //       width: 26.0,
                        //     ),
                        //   ],
                        // ),
                        SizedBox(
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 23.0,
                              ),
                              SizedBox(
                                width: 105.0,
                                height: 25,
                                child: Text(
                                  "Choose a color :",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 160.0,
                                child: ListView.builder(
                                  itemCount: ColorsService.color.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    var item = ColorsService.color[index];
                                    return Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        onTap: () {
                                          controller.selectedIndex =
                                              item['id'].toString();
                                          controller.setState(() {});
                                        },
                                        child: CircleAvatar(
                                          backgroundColor:
                                              (controller.selectedIndex ==
                                                      item['id'].toString())
                                                  ? Colors.grey
                                                  : Colors.white,
                                          radius: 14,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 12,
                                            child: CircleAvatar(
                                              backgroundColor: item['color'],
                                              radius: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 30.0,
                          margin: const EdgeInsets.symmetric(horizontal: 23.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120.0,
                                child: Text(
                                  "Select Quality :",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 14.0),
                                width: 94.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(24.0),
                                  ),
                                ),
                                child: SizedBox(
                                  height: 100.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      Container(
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffE7E7E7),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 28.0,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 23.0),
                          height: 80.0,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[400],
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 44.0,
                          margin: const EdgeInsets.symmetric(horizontal: 23.0),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              backgroundColor: const Color(0xff9C9290),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
