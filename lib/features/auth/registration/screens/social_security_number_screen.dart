import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/registration/screens/residential_address_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

class SocialSecurityNumberScreen extends StatefulWidget {
  const SocialSecurityNumberScreen({super.key});

  @override
  State<SocialSecurityNumberScreen> createState() => _SocialSecurityNumberScreenState();
}

class _SocialSecurityNumberScreenState extends State<SocialSecurityNumberScreen> {
  final ssnController = TextEditingController();
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
              "Socila Security Number (SSN)",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              "Your privacy and security are our top priorities, We require your Social Security Number (SSN) only in compliance with legal requirements",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
            const SizedBox(height: 15,),
            CustomTextField(hintText: "Social Security Number", controller: ssnController, isObscure: false),
            const Spacer(),
            CustomButtonOne(title: "Authenticate", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ResidentialAddressScreen()));
            })
          ],
        ),
      ),
    );
  }
}
