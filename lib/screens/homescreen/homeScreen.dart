import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilimall/controllers/productController.dart';
import 'package:kilimall/widgets/appbar.dart';
import 'package:kilimall/widgets/input.dart';
import 'package:kilimall/widgets/search.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(context),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SearchInput(context),
                  Icon(Icons.filter_list_rounded)
                ],
              ),
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
            )
          
          ],
        ),
      ),
    );
    
  }
}
