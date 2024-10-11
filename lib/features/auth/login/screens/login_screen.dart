import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/forgot_password/screens/forgot_password_screen.dart';
import 'package:tidmuv/features/auth/registration/screens/personal_information_screen.dart';
import 'package:tidmuv/features/home/screens/home_screen.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

import '../../../../utilities/shared_components/custom_button_one.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEEE5),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 120,
              width: 120,
              child: Image.asset("images/Frame 1286.png"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Container(
                height: 270,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10,),
                      Container(
                        height: 3,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300]
                        ),
                      ),
                      const SizedBox(height: 10,),
                      CustomTextField(
                        hintText: "Enter username",
                        controller: userNameController,
                        isObscure: false,
                      ),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        hintText: "Enter password",
                        controller: passwordController,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isClicked = !isClicked;
                              });
                            },
                            icon: Icon(isClicked
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined)),
                        isObscure: isClicked ? false : true,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(AppColors.primaryColor)
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      CustomButtonOne(
                        title: "Sign in",
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                        },
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PersonalInformationScreen()));
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(AppColors.primaryColor)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
