import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilimall/controllers/authController.dart';
import 'package:kilimall/screens/authentication/signup.dart';
import 'package:kilimall/widgets/button.dart';
import 'package:kilimall/widgets/input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/kilimall-oversea-shipping-days.png"),fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(),
            InputField(
              label: 'Email:',
              borderColor: Colors.blueAccent,
              controller: authController.emailController,
              hint: 'Enter email',
              obscure: false,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              label: 'Password: ',
              borderColor: Colors.blueAccent,
              controller: authController.passwordController,
              hint: 'Enter password *****',
              obscure: true,
              icon: Icons.remove_red_eye_rounded,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () => {Get.offAll(SignUpScreen())},
                child: Text("Dont have an account?")),
            const SizedBox(
              height: 20,
            ),
            InkWell(onTap: () => {
              authController.loginUser()
            },child: CustomButton(btnText: 'Login', borderColor: Colors.blue)),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
