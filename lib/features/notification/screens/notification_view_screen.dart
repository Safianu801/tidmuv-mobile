import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

class NotificationViewScreen extends StatelessWidget {
  const NotificationViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(AppColors.primaryColor),
        elevation: 0,
        leading: CustomBackButton(context: context),
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(AppColors.primaryColor),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            SizedBox(
              height: 50,
                width: 50,
                child: Image.asset("images/Frame 1286.png")),
            const SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Package Delivered',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Kaira Taylor has confirmed Delivery of package #EZ1098765432. Please confirm package delivery to complete transaction.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      '07 Jan, 2024 at 09:00PM',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 128,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: const Color(AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                              child: Image.asset("images/Frame 1314.png")),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tracking Number',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'ES9876543210',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  'Delivery Location',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  '702 Walnut Avenue, Apt 101, Irvine',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
