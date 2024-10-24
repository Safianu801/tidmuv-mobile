import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_summary_cont.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_summary_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_back_button.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({super.key});

  @override
  State<DeliveryDetailsScreen> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  final expectedDateController = TextEditingController();
  final expectedTimeController = TextEditingController();
  final recipientNameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final addressController = TextEditingController();
  final messageController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: CustomBackButton(context: context),
        title: const Text(
          "Delivery Details",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              CustomTextField(hintText: "Expected Delivery Date", controller: expectedDateController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Expected Delivery Time", controller: expectedTimeController, isObscure: false),
              const SizedBox(height: 10,),
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
                    "Please confirm your parcel as urgent additional fees may apply",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 25,),
              CustomTextField(hintText: "Recipient's Name", controller: recipientNameController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Contact Number", controller: contactNumberController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Address", controller: addressController, isObscure: false),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Message", controller: messageController, isObscure: false),
              const SizedBox(height: 20,),
              CustomButtonOne(title: "Proceed", onClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DeliverySummaryCont()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
