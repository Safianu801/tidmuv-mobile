import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/documents_screen.dart';
import 'package:tidmuv/features/request_delivery/screen/parcel_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_field_two.dart';
import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/tracking_text_field.dart';

class RequestDeliveryScreen extends StatefulWidget {
  const RequestDeliveryScreen({super.key});

  @override
  State<RequestDeliveryScreen> createState() => _RequestDeliveryScreenState();
}

class _RequestDeliveryScreenState extends State<RequestDeliveryScreen> {
  final locationController = TextEditingController();
  final pickUpTimeController = TextEditingController();
  final pickupDataController = TextEditingController();
  String requestOrDelivery = "Documents";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: const Text("Request Delivery"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Icon(Icons.notification_important),
              ),
            ),
          )
        ],
        leading: CustomBackButton(context: context),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TrackingTextField(
                      hintText: "Enter tracking Number",
                      controller: locationController,
                      prefixIcon: "images/marker-pin-04.png",
                      suffixIcon: Icons.search,
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Icon(Icons.control_point, color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 10.0, left: 10.0, top: 20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 2,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(AppColors.primaryColor)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.timelapse_outlined, color: Color(AppColors.primaryColor),),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Container(
                                      height: 40,
                                      width: 1,
                                      decoration: const BoxDecoration(
                                          color: Colors.green
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(child: CustomTextFieldTwo(controller: pickUpTimeController, hintText: "Pick Up Time",)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.calendar_today_outlined, color: Color(AppColors.primaryColor),),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Container(
                                      height: 40,
                                      width: 1,
                                      decoration: const BoxDecoration(
                                          color: Colors.green
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(child: CustomTextFieldTwo(controller: pickUpTimeController, hintText: "Pick Up Date",)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Please Note:",
                              style: TextStyle(
                                color: Color(AppColors.primaryColor),
                                fontSize: 12
                              )
                            ),
                            TextSpan(
                              text: "You are expected to be at pick up location 15 minutes before specified time.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                              )
                            ),
                          ]
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Package Type",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      requestOrDelivery = "Documents";
                                    });
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DocumentsScreen()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: requestOrDelivery == "Documents" ? const Color(AppColors.primaryColor) : Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Documents",
                                        style: TextStyle(
                                            color: requestOrDelivery == "Documents" ? Colors.white : const Color(AppColors.primaryColor)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      requestOrDelivery = "Parcel";
                                    });
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ParcelScreen()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: requestOrDelivery == "Parcel" ? const Color(AppColors.primaryColor) : Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Parcel",
                                        style: TextStyle(
                                            color: requestOrDelivery == "Parcel" ? Colors.white : const Color(AppColors.primaryColor)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
