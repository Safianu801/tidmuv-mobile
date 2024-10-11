import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/registration/screens/otp_verification_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

class ResidentialAddressScreen extends StatefulWidget {
  const ResidentialAddressScreen({super.key});

  @override
  State<ResidentialAddressScreen> createState() => _ResidentialAddressScreenState();
}

class _ResidentialAddressScreenState extends State<ResidentialAddressScreen> {
  final addressController = TextEditingController();
  final apartmentController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Residential Address",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 5,),
              const Text(
                "To ensure accurate and reliable deliveries please provide your residential address",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),
              ),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Address", controller: addressController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Apartment", controller: apartmentController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "State", controller: stateController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "City", controller: cityController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Zip Code", controller: zipCodeController, isObscure: false),
              const SizedBox(height: 20,),
              CustomButtonOne(title: "Proceed", onClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpVerificationScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
