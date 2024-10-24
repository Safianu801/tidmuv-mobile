import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_back_button.dart';
import '../../../utilities/shared_components/custom_button_one.dart';
import '../../../utilities/shared_components/custom_text_Field.dart';

class DeliverySummaryScreen extends StatefulWidget {
  const DeliverySummaryScreen({super.key});

  @override
  State<DeliverySummaryScreen> createState() => _DeliverySummaryScreenState();
}

class _DeliverySummaryScreenState extends State<DeliverySummaryScreen> {
  final promoCodeController = TextEditingController();
  String selectedDestination = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: CustomBackButton(context: context),
        title: const Text(
          "Delivery Summary",
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
              CustomTextField(hintText: "Promo Code", controller: promoCodeController, isObscure: false),
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
              const SizedBox(height: 30,),
              const Text(
                "Payment Breakdown",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              const PaymentBreakDownStyle(title: "Delivery", data: "+ \$65.00"),
              const SizedBox(height: 10,),
              const PaymentBreakDownStyle(title: "Additional Charges", data: "+ \$15.50"),
              const SizedBox(height: 25,),
              const PaymentBreakDownStyle(title: "Delivery", data: "+ \$65.00"),
              const SizedBox(height: 25,),
              const PaymentBreakDownStyle(title: "Cost Total", data: "+ \$75.50", titleStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey
              ), dataStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(AppColors.primaryColor)
              ),),
              const SizedBox(height: 50,),
              CustomButtonOne(title: "Confirm Payment", onClick: (){})
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentBreakDownStyle extends StatelessWidget {
  final String title;
  final String data;
  final TextStyle? titleStyle;
  final TextStyle? dataStyle;
  const PaymentBreakDownStyle({super.key, required this.title, required this.data, this.titleStyle, this.dataStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleStyle ?? const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400
          ),
        ),
        Text(
          data,
          style: dataStyle ?? const TextStyle(
            color: Color(AppColors.primaryColor),
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
