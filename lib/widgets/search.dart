import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilimall/controllers/productController.dart';

Widget SearchInput(BuildContext context) {
  ProductController productController = Get.put(ProductController());
  return Container(
      padding: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: productController.productName,
        decoration:
            InputDecoration(border: InputBorder.none, icon: Icon(Icons.search)),
      ));
}
