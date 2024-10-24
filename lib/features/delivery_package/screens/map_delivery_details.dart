import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/request_details_screen.dart';
import 'package:tidmuv/features/scanner/screens/scan_qr_code_screen.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

import '../../../utilities/shared_components/custom_back_button.dart';

class MapDeliveryDetails extends StatefulWidget {
  const MapDeliveryDetails({super.key});

  @override
  State<MapDeliveryDetails> createState() => _MapDeliveryDetailsState();
}

class _MapDeliveryDetailsState extends State<MapDeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background map
          Container(
            color: Colors.green.shade100,
          ),
          // Top bar
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(context: context),
                const Text(
                  'Delivery Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
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
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.32,
            minChildSize: 0.32,
            maxChildSize: 0.6,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Emily Joihnson",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Text(
                                      "emRose69",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/Icon (2).png"),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Package Summary", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17
                            ),),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Package Type",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      "Parcel",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Quantity",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "50lb",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black
                                          ),
                                        ),
                                        Text(
                                          " (Medium)",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(AppColors.primaryColor)
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "18 x 12 x 6in",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 30,),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: const Color(AppColors.primaryColor),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Standard",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          "Delivery fee",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13
                                          ),
                                        ),
                                        const Text(
                                          "\$ 75.50",
                                          style: TextStyle(
                                              color: Color(AppColors.primaryColor),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25,),
                            Row(
                              children: [
                                const Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "07 Jan, 02:30pm",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      "Los Angeles",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: const Color(AppColors.primaryColor),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Image.asset("images/marker-pin-04.png", color: Colors.white,),
                                          ),
                                        ),
                                        for (int i = 0; i < 4; i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                            child: Container(
                                              height: 1, width: 5,
                                              decoration: const BoxDecoration(
                                                  color: Colors.green
                                              ),
                                            ),
                                          ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: const Color(AppColors.primaryColor),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Image.asset("images/Icon (1).png", color: Colors.white,),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],)),
                                const Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "07 Jan, 06:30pm",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black
                                      ),
                                    ),
                                    Text(
                                      "Irvine",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomSheet: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                    child: Icon(Icons.qr_code_scanner_rounded, color: Colors.white,),
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                flex: 8,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RequestDetailsScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text(
                        "Delivery Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
