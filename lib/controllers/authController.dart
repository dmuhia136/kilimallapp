import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilimall/screens/homescreen/homeScreen.dart';
import 'package:kilimall/services/user_client.dart';
import '../services/user_client.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();

  createUser() async {
    Map<String, dynamic> data = {
      "email": emailController.text,
      "password": passwordController.text,
      "firstname": fnameController.text,
      "lastname": lnameController.text
    };
    var response = await UserClient.createUser(data);
    print(response);
    if (response['status'] == 200) {
      Get.snackbar(
        'Success',
        '${response['message']}',
      );
    } else {
      Get.snackbar("Failed", "User was not created",
          backgroundColor: Colors.red);
    }
  }

  loginUser() async {
    try {
      Map<String, dynamic> data = {
        "email": emailController.text,
        "password": passwordController.text
      };
      var response = await UserClient.loginUser(data);
      if (response['status'] == 200) {
        Get.snackbar(
          'Success',
          '${response['message']}',
        );
        Get.offAll(HomeScreen());
      }
    } catch (e, s) {
      print("$e,$s");
      Get.snackbar("$e", "$s");
    }
  }
}
