import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_details_screen.dart';
import 'package:tidmuv/features/request_delivery/screen/request_delivery_screen.dart';
import 'package:tidmuv/features/request_delivery/screen/request_details_screen.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

import 'map_delivery_details.dart';

class DeliverPackageScreen extends StatefulWidget {
  const DeliverPackageScreen({super.key});

  @override
  State<DeliverPackageScreen> createState() => _DeliverPackageScreenState();
}

class _DeliverPackageScreenState extends State<DeliverPackageScreen> {
  String regularOrUrgent = "";

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
                  'Deliver Package',
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
          Positioned(
            top: MediaQuery.of(context).padding.top + 72,
            left: 16,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                        color: const Color(AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                //sort button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 42,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Sort "),
                          Container(
                              decoration: BoxDecoration(
                                  color: const Color(AppColors.primaryColor)
                                      .withOpacity(0.5)),
                              child: const Icon(
                                  Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      regularOrUrgent = "Regular";
                    });
                  },
                  child: Container(
                    height: 42,
                    width: regularOrUrgent == "Regular" ? 100 : 80,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        regularOrUrgent == "Regular"
                            ? const Icon(
                                Icons.check,
                                size: 17,
                              )
                            : const SizedBox.shrink(),
                        regularOrUrgent == "Regular"
                            ? const SizedBox(
                                width: 5,
                              )
                            : const SizedBox.shrink(),
                        const Text(
                          "Regular",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      regularOrUrgent = "Urgent";
                    });
                  },
                  child: Container(
                    height: 42,
                    width: regularOrUrgent == "Urgent" ? 100 : 80,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        regularOrUrgent == "Urgent"
                            ? const Icon(
                                Icons.check,
                                size: 17,
                              )
                            : const SizedBox.shrink(),
                        regularOrUrgent == "Urgent"
                            ? const SizedBox(
                                width: 5,
                              )
                            : const SizedBox.shrink(),
                        const Text(
                          "Urgent",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Draggable bottom sheet
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.35,
            maxChildSize: 0.8,
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
                        const PackageListing(),
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

class PackageListing extends StatelessWidget {
  const PackageListing({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MapDeliveryDetails()));
      },
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(AppColors.primaryColor),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200]),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 38,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                            child: Text(
                              "Standard",
                              style:
                              TextStyle(color: Color(AppColors.primaryColor)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Medium Parcel',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          '\$75.50',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "07 Jan, 02:30pm",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white.withOpacity(0.5)
                              ),
                            ),
                            const Text(
                              "Los Angeles",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                          ],)),
                        Expanded(child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset("images/marker-pin-04.png", color: const Color(AppColors.primaryColor),),
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
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset("images/Icon (1).png", color: const Color(AppColors.primaryColor),),
                                  ),
                                ),
                              ],
                            )
                          ],)),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "07 Jan, 06:30pm",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white.withOpacity(0.5)
                              ),
                            ),
                            const Text(
                              "Irvine",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                          ],)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
