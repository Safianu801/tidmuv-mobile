import 'package:flutter/material.dart';
import 'package:tidmuv/features/profile/components/profile_quick_action_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

import '../../../utilities/constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(AppColors.primaryColor),
        surfaceTintColor: const Color(AppColors.primaryColor),
        leading: CustomBackButton(context: context),
        title: const Text("Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
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
                child: Icon(Icons.logout, size: 20, color: Color(AppColors.primaryColor),),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    const Text(
                      "Emily Johnson",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Los Angeles, Califonia ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 11
                          ),
                        ),
                        Image.asset("images/marker-pin-04.png", color: Colors.white, scale: 2,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Current Package",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color(AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(15)
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Account Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      ProfileQuickActionButton(title: "Change Password", onClick: (){}),
                      ProfileQuickActionButton(title: "Notification", onClick: (){}),
                      ProfileQuickActionButton(title: "Enable Face ID", onClick: (){}),
                      ProfileQuickActionButton(title: "privacy Policy", onClick: (){}),
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
