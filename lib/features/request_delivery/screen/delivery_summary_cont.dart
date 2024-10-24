import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_summary_screen.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

import '../../../utilities/shared_components/custom_back_button.dart';

class DeliverySummaryCont extends StatefulWidget {
  const DeliverySummaryCont({super.key});

  @override
  State<DeliverySummaryCont> createState() => _DeliverySummaryContState();
}

class _DeliverySummaryContState extends State<DeliverySummaryCont> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            //sum card (reusable soon)
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
              ],
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Package Summary",
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
                      child: Icon(Icons.edit, color: Color(AppColors.primaryColor), size: 19,),
                    ),
                  ),
                )
              ],
            ),
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
            const Spacer(),
            CustomButtonOne(title: "Process Payment", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DeliverySummaryScreen()));
            })
          ],
        ),
      ),
    );
  }
}
