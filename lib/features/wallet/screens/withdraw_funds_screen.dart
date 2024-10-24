import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

import '../../../utilities/shared_components/custom_back_button.dart';

class WithdrawFundsScreen extends StatefulWidget {
  const WithdrawFundsScreen({super.key});

  @override
  State<WithdrawFundsScreen> createState() => _WithdrawFundsScreenState();
}

class _WithdrawFundsScreenState extends State<WithdrawFundsScreen> {
  final amountController = TextEditingController();
  final otpController = TextEditingController();
  String selectedDestination = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: CustomBackButton(context: context),
        title: const Text(
          "Withdraw Funds",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(hintText: "Enter Amount", controller: amountController, isObscure: false),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select Destination",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Color(AppColors.primaryColor), size: 19,),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedDestination = "Mater Card";
                  });
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: selectedDestination == "Mater Card" ? const Color(AppColors.primaryColor) : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: selectedDestination == "Mater Card" ? Colors.transparent : const Color(AppColors.primaryColor))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedDestination == "Mater Card" ? Colors.green[200] : const Color(AppColors.primaryColor)
                          ),
                        ),
                        const SizedBox(width: 3,),
                        Container(
                          height: 40,
                          width: 1,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mater Card", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: selectedDestination == "Mater Card" ? Colors.white : const Color(AppColors.primaryColor)),),
                            Text("**** **** **** 9090", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: selectedDestination == "Mater Card" ? Colors.white : const Color(AppColors.primaryColor)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedDestination = "Paypal";
                  });
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: selectedDestination == "Paypal" ? const Color(AppColors.primaryColor) : Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: selectedDestination == "Paypal" ? Colors.transparent : const Color(AppColors.primaryColor))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedDestination == "Paypal" ? Colors.green[200] : const Color(AppColors.primaryColor)
                          ),
                        ),
                        const SizedBox(width: 3,),
                        Container(
                          height: 40,
                          width: 1,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mater Card", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: selectedDestination == "Paypal" ? Colors.white : const Color(AppColors.primaryColor)),),
                            Text("**** **** **** 9090", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: selectedDestination == "Paypal" ? Colors.white : const Color(AppColors.primaryColor)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                "Authenticate Withdrawal",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              CustomTextField(hintText: "Enter OTP", controller: otpController, isObscure: false),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Enter generated OTP code",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Text(
                          "Generate OTP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 100,),
              CustomButtonOne(title: "Withdraw", onClick: (){})
            ],
          ),
        ),
      ),
    );
  }
}
