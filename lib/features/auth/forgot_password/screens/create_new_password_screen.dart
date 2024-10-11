import 'package:flutter/material.dart';

import '../../../../utilities/shared_components/custom_back_button.dart';
import '../../../../utilities/shared_components/custom_button_one.dart';
import '../../../../utilities/shared_components/custom_text_Field.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final conPasswordController = TextEditingController();
  bool isClicked = false;
  bool isChecked = false;
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
              "Create New Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              "Please enter your new password and confirm",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
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
            const SizedBox(height: 15,),
            CustomTextField(
              hintText: "Confirm password",
              controller: conPasswordController,
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
            const Spacer(),
            CustomButtonOne(title: "Proceed", onClick: (){})
          ],
        ),
      ),
    );
  }
}
