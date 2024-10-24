import 'package:flutter/material.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_summary_screen.dart';
import 'package:tidmuv/features/request_delivery/screen/request_details_screen.dart';
import 'package:tidmuv/features/request_delivery/screen/delivery_details_screen.dart';

import '../../../utilities/shared_components/custom_back_button.dart';
import '../../../utilities/shared_components/custom_button_one.dart';

class CaptureImageScreen extends StatefulWidget {
  const CaptureImageScreen({super.key});

  @override
  State<CaptureImageScreen> createState() => _CaptureImageScreenState();
}

class _CaptureImageScreenState extends State<CaptureImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
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
          )
        ],
        title: const Text("Capture Image"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("images/Group 33295.png")),
            const Spacer(),
            CustomButtonOne(title: "Capture Image", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DeliveryDetailsScreen()));
            })
          ],
        ),
      ),
    );
  }
}
