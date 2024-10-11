import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/registration/screens/social_security_number_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                    ),
                  ),
                  const Text(
                    "Upload Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              CustomTextField(hintText: "First Name", controller: firstNameController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Middle Name", controller: middleNameController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Last Name", controller: lastNameController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "0800-000-0000", controller: phoneNumberController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Email", controller: emailController, isObscure: false),
              const SizedBox(height: 30,),
              CustomButtonOne(title: "Proceed", onClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SocialSecurityNumberScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
