import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomAppBar(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          InkWell(onTap: () => {
            Drawer(child: Column(),)
          },child: const Icon(Icons.list)),
          Column(
            children: [
              Text(
                "Dennis Muhia",
                style: GoogleFonts.arsenal(
                    fontSize: 15, fontWeight: FontWeight.w300),
              ),
              Text("Kenya, Nkr",
                  style: GoogleFonts.arsenal(
                      fontSize: 15, fontWeight: FontWeight.w700)),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
            radius: 20,
          )
        ],
      ),
    ),
  );
}
