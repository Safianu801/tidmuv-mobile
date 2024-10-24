import 'package:flutter/material.dart';
import 'package:tidmuv/features/tracking_feature/screens/package_details_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_text_Field.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_back_button.dart';
import '../../../utilities/shared_components/custom_button_one.dart';
import '../../../utilities/shared_components/tracking_text_field.dart';

class PackageTrackingScreen extends StatefulWidget {
  const PackageTrackingScreen({super.key});

  @override
  State<PackageTrackingScreen> createState() => _PackageTrackingScreenState();
}

class _PackageTrackingScreenState extends State<PackageTrackingScreen> {
  final trackPackageController = TextEditingController();
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
                  'Package Tracking',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Icon(Icons.notification_important),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Sort options
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                TrackingTextField(
                  hintText: "Enter tracking Number",
                  controller: trackPackageController,
                ),
              ],
            ),
          ),
          // Draggable bottom sheet
          DraggableScrollableSheet(
            initialChildSize: 0.26,
            minChildSize: 0.26,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Explore Listings',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Driver information
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Sandra Taylor',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) {
                                          return const Icon(
                                            Icons.star,
                                            color: Color(AppColors.primaryColor),
                                            size: 16,
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
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
                            const SizedBox(height: 20),
                            // Package details
                            Row(
                              children: [
                                const Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Delivery Type",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      "Regular",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                                const Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Category",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text(
                                      "Packaged",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],)),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Status",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Color(AppColors.primaryColor),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "In-Transit",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],)),
                              ],
                            ),
                            const SizedBox(height: 20),
                            // Tracking ID
                            const ProgressTracker(),
                            const SizedBox(height: 20),
                            // Report an issue button
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                    child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(AppColors.primaryColor),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                      child: const Center(
                                        child: Icon(Icons.indeterminate_check_box, color: Colors.white,),
                                      ),
                                )),
                                const SizedBox(width: 10,),
                                Expanded(
                                  flex: 8,
                                    child: CustomButtonOne(title: "Report an issue", onClick: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PackageDetailsScreen()));
                                    })),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProgressTracker extends StatelessWidget {
  const ProgressTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color(AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < 8; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Container(
                        height: 5,
                        width: 1,
                        decoration: const BoxDecoration(
                            color: Color(AppColors.primaryColor)
                        ),
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              flex: 9,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Arrived at Destination", style: TextStyle(
                            color: Color(AppColors.primaryColor),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Package (Parcel) successfully arrived at destination, please confirm delivery",
                      style: TextStyle(
                          fontSize: 15,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color(AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < 8; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Container(
                        height: 5,
                        width: 1,
                        decoration: const BoxDecoration(
                            color: Color(AppColors.primaryColor)
                        ),
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              flex: 9,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("In-Transit", style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Package (Parcel) now in transit. You will be notified on successful delivery",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color(AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < 8; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Container(
                        height: 5,
                        width: 1,
                        decoration: const BoxDecoration(
                            color: Color(AppColors.primaryColor)
                        ),
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              flex: 9,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pick Up Confirmation", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Traveler (John Masara) has confirmed package (Parcel) Pick Up.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: const Color(AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              flex: 9,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Parcel Listed", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Your Package (Parcel) successfully listed, Awaiting pickup confirmation.",
                      style: TextStyle(
                          fontSize: 15,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
