import 'package:flutter/material.dart';
import 'package:tidmuv/features/scanner/screens/capture_image_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_back_button.dart';

class ParcelScreen extends StatefulWidget {
  const ParcelScreen({super.key});

  @override
  State<ParcelScreen> createState() => _ParcelScreenState();
}

class _ParcelScreenState extends State<ParcelScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: CustomBackButton(context: context),
        title: const Text(
          "Parcel",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount to Traveler',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(AppColors.primaryColor))),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              const Text(
                'Please Note: The minimum amount you are ready to give traveler for delivery is \$50.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const Text(
                'Package Parameters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Weight',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(AppColors.primaryColor))),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color(AppColors.primaryColor))),
                            child: const Center(
                              child: Text(
                                "kg",
                                style: TextStyle(
                                    color: Color(AppColors.primaryColor)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color(AppColors.primaryColor))),
                            child: const Center(
                              child: Text(
                                "kg",
                                style: TextStyle(
                                    color: Color(AppColors.primaryColor)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Length',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(AppColors.primaryColor))),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.link,
                    color: Color(AppColors.primaryColor),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Width',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(AppColors.primaryColor))),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.link,
                    color: Color(AppColors.primaryColor),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Height',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(AppColors.primaryColor))
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Package Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Package Size',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(AppColors.primaryColor))
                  ),
                ),
                items: ['Small', 'Medium', 'Large']
                    .map((size) => DropdownMenuItem(
                          value: size,
                          child: Text(size),
                        ))
                    .toList(),
                onChanged: (value) {
                  // Handle size selection
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Package Condition',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(AppColors.primaryColor))
                  ),
                ),
                items: ['New', 'Used']
                    .map((condition) => DropdownMenuItem(
                          value: condition,
                          child: Text(condition),
                        ))
                    .toList(),
                onChanged: (value) {
                  // Handle condition selection
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1,
                              color: const Color(AppColors.primaryColor))),
                      child: isChecked
                          ? Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color(AppColors.primaryColor)),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: Text(
                    "Please, Confirm Your Parcel has been Properly Packaged for Delivery.",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ))
                ],
              ),
              const SizedBox(height: 20),
              CustomButtonOne(title: "Capture Image", onClick: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CaptureImageScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
