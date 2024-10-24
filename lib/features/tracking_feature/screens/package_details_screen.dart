import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

class PackageDetailsScreen extends StatelessWidget {
  const PackageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Details'),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
            // Tracking ID
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset("images/marker-pin-04.png"),
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
                                Text("Pick Up", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),),
                                Text("07 Jan 2024, 02:30pm", style: TextStyle(
                                    color: Color(AppColors.primaryColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "1234 Baker Street, Apt 404, Los Angeles",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              "California 9001",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
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
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset("images/Icon (1).png"),
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
                                Text("Delivery", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),),
                                Text("07 Jan 2024, 02:30pm", style: TextStyle(
                                    color: Color(AppColors.primaryColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "1234 Baker Street, Apt 404, Los Angeles",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              "California 9001",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recipient:",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),
                ),
                Text(
                  "Karina Krof",
                  style: TextStyle(
                    color: Color(AppColors.primaryColor),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Package Summary",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 30),
            // Report an issue button
            CustomButtonOne(title: "Report an issue", onClick: (){}),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationDetails({required IconData icon, required String title, required String date, required String address}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.green),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
          child: Text(address),
        ),
        const Divider(),
      ],
    );
  }

  Widget _buildPackageDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivery Type',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Regular'),
            const Text('Packaged'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'In-Transit',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Recipient:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text('Karina Krof'),
      ],
    );
  }

  Widget _buildPackageSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Package Summary',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Package Type: Parcel'),
                Text('Quantity: 1'),
                Text('50 lbs (Medium)'),
                Text('18\' x 12\' x 6in'),
              ],
            ),
            Container(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/images/package.jpg', // Placeholder image
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Standard',
                style: TextStyle(color: Colors.green),
              ),
            ),
            const Text(
              '\$75.50',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
