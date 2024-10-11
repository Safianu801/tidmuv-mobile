import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

import '../../../../utilities/shared_components/custom_text_Field.dart';

class CreateAccountDetailsScreen extends StatefulWidget {
  const CreateAccountDetailsScreen({super.key});

  @override
  State<CreateAccountDetailsScreen> createState() => _CreateAccountDetailsScreenState();
}

class _CreateAccountDetailsScreenState extends State<CreateAccountDetailsScreen> {
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
              "Create Account Details",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              "Please enter username and password",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 15,),
            CustomTextField(
              hintText: "Enter username",
              controller: passwordController,
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
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: const Color(AppColors.primaryColor))
                    ),
                    child: isChecked ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            color: const Color(AppColors.primaryColor)
                          ),
                        ),
                      ),
                    ) : const SizedBox.shrink(),
                  ),
                ),
                const SizedBox(width: 10,),
                const Expanded(child: Text(
                  "You agree to our terms and policy. confirm that you have read and understood the privacy and policy of Tidmuv appllication for your country",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey
                  ),
                ))
              ],
            ),
            const Spacer(),
            CustomButtonOne(title: "Proceed", onClick: (){})
          ],
        ),
      ),
    );
  }
}
