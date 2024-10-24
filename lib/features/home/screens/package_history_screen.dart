import 'package:flutter/material.dart';
import 'package:tidmuv/features/home/components/package_history_card_style.dart';
import 'package:tidmuv/features/home/components/recent_delivery_card_style.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

class PackageHistoryScreen extends StatefulWidget {
  const PackageHistoryScreen({super.key});

  @override
  State<PackageHistoryScreen> createState() => _PackageHistoryScreenState();
}

class _PackageHistoryScreenState extends State<PackageHistoryScreen> {
  String requestOrDelivery = "Request";
  final options = [
    "All",
    "Pending",
    "In_Transit",
    "Delivered",
  ];
  String selectedOption = "All";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: CustomBackButton(context: context),
        title: const Text(
          "Package History",
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),
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
                borderRadius: BorderRadius.circular(8)
              ),
              child: const Center(
                child: Icon(Icons.notifications, size: 20,),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          requestOrDelivery = "Request";
                        });
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: requestOrDelivery == "Request" ? const Color(AppColors.primaryColor) : Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Request",
                            style: TextStyle(
                              color: requestOrDelivery == "Request" ? Colors.white : const Color(AppColors.primaryColor)
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
                          requestOrDelivery = "Deliveries";
                        });
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: requestOrDelivery == "Deliveries" ? const Color(AppColors.primaryColor) : Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Deliveries",
                            style: TextStyle(
                              color: requestOrDelivery == "Deliveries" ? Colors.white : const Color(AppColors.primaryColor)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            requestOrDelivery == "Request" ? Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: const Center(
                                child: Icon(Icons.filter_alt_rounded, color: Colors.white,),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            for (int i = 0; i < options.length; i++)
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedOption = options[i];
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: selectedOption == options[i] ? const Color(AppColors.primaryColor) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                                      child: Text(
                                        options[i],
                                        style: TextStyle(
                                          color: selectedOption == options[i] ? Colors.white : const Color(AppColors.primaryColor)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      for (int i = 0; i < 15; i++)
                        const PackageHistoryCardStyle()
                    ],
                  ),
                ),
              )
            ],) : Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color(AppColors.primaryColor),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: const Center(
                                child: Icon(Icons.filter_alt_rounded, color: Colors.white,),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            for (int i = 0; i < options.length; i++)
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedOption = options[i];
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: selectedOption == options[i] ? const Color(AppColors.primaryColor) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                                      child: Text(
                                        options[i],
                                        style: TextStyle(
                                            color: selectedOption == options[i] ? Colors.white : const Color(AppColors.primaryColor)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      for (int i = 0; i < 15; i++)
                        const RecentDeliveryCardStyle()
                    ],
                  ),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}
