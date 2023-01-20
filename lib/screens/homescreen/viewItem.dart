import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({super.key});
  static const IconData shopping_cart =
      IconData(0xe59c, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Positioned(top: 20,bottom: 20, child: Icon(Icons.arrow_back_ios)),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/girlshopping.jpg')),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Text(""),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "New Item",
                    style: GoogleFonts.lato(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Buy today",
                    style: GoogleFonts.acme(color: Colors.black45),
                  )
                ],
              ),
              Icon(
                Icons.favorite,
                color: Colors.pink[300],
                size: 40,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.lato(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    shopping_cart,
                    color: Colors.purple[200],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
