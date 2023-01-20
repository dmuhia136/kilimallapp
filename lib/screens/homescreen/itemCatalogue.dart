import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemCatalogue extends StatelessWidget {
  const ItemCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          
        children: [
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
          ListTile(title:Text("Hello today",)),
        ],
        )
            //  StaggeredGridView.countBuilder(
            //   crossAxisCount: 2,
            //   itemCount: images.length,
            //   mainAxisSpacing: 4.0,
            //   crossAxisSpacing: 4.0,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       child: Card(
            //         child: Column(
            //           children: [
            //             Image.network(images[index]),
            //             Text("Some Text"),
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            //   staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            // ),
            ),
      ],
    ));
  }
}
