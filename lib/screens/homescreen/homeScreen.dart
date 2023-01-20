import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilimall/controllers/productController.dart';
import 'package:kilimall/screens/homescreen/itemCatalogue.dart';
import 'package:kilimall/screens/homescreen/viewItem.dart';
import 'package:kilimall/widgets/appbar.dart';
import 'package:kilimall/widgets/bottomNav.dart';
import 'package:kilimall/widgets/input.dart';
import 'package:kilimall/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductController productController = Get.put(ProductController());

  int _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
  List<String> category = [
    "All",
    "Shoes",
    "Bags",
    "Phones",
    "Television",
    "Books",
    "Laptops",
    "Cars",
    "Cooking"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          activeColor: Colors.amber,
          backgroundColor: Colors.deepOrangeAccent[100],
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) =>
              setState(() => {_bottomNavIndex = index, print(index)}),
          //other params
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchInput(context),
                    Icon(Icons.filter_list_rounded)
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/images/girlshopping.jpg"),
                          fit: BoxFit.fill)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Big Sale",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey[100]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "All sales we had is\n 50% from all the products\n in the store",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey[100]),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 24,
                  child: ListView.builder(
                      itemCount: category.length,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        String item = category.elementAt(index);
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                item,
                                style: GoogleFonts.lato(color: Colors.white),
                              )),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  // child: ItemCatalogue()
                  child: ListView.builder(
                      itemCount: 120,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(onTap: ()=>{
                          Get.to(ViewItem())
                        },
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Column(
                                children: [
                                  Container(
                                      height: MediaQuery.of(context).size.height *
                                          0.2,
                                      width:
                                          MediaQuery.of(context).size.width * 1.0,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/girlshopping.jpg')))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('New Collection'),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/girlshopping.jpg'),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  InkWell(
                                      onTap: () => {
                                            print(index),
                                            Get.snackbar(
                                              "My index is",
                                              "$index",
                                              onTap: (snack) =>
                                                  print("${snack} $index"),
                                            )
                                          },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.4,
                                        padding: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            color: Colors.red[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Add To Cart",
                                              style: GoogleFonts.lato(
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
