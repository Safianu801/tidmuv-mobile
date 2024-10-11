import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/forgot_password/screens/forgot_password_otp_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              "Please ensure you enter your email address registered to Tidmuv below, we will send you a secured verification code shortly.",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 10,),
            CustomTextField(hintText: "Enter email", controller: emailController, isObscure: false),
            const Spacer(),
            CustomButtonOne(title: "Proceed", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordOtpScreen()));
            })
          ],
        ),
      ),
    );
  }
}
