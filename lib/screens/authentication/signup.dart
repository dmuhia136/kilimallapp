import 'package:flutter/material.dart';
import 'package:kilimall/controllers/authController.dart';
import 'package:kilimall/screens/authentication/login.dart';
import 'package:kilimall/widgets/input.dart';
import 'package:get/get.dart';
import '../../widgets/button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/kilimall-oversea-shipping-days.png"),fit: BoxFit.cover)),
          child: Column(
            children: [
              Spacer(),
              InputField(
                label: 'First Name:',
                borderColor: Colors.blueAccent,
                controller: authController.fnameController,
                hint: 'Enter your first name',
                obscure: false,
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                label: 'Last Name:',
                borderColor: Colors.blueAccent,
                controller: authController.lnameController,
                hint: 'Enter email',
                obscure: false,
              ),
              SizedBox(
                height: 20,
              ),
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
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => {Get.offAll(LoginScreen())},
                  child: Text("Dont have an account?")),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () => authController.createUser(),
                  child:
                      CustomButton(btnText: 'Sign Up', borderColor: Colors.blue)),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
