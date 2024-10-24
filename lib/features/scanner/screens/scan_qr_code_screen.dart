import 'package:flutter/material.dart';

import '../../../utilities/shared_components/custom_back_button.dart';
import '../../../utilities/shared_components/custom_button_one.dart';

class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({super.key});

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen> {
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
        title: const Text("Scan QR Code"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Text(
              "Scan QR code to confirm Pick Up and access delivery details.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400
              ),
            ),
            const Spacer(),
            SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("images/Group 33295.png")),
            const Spacer(),
            CustomButtonOne(title: "Generate New Code", onClick: (){})
          ],
        ),
      ),
    );
  }
}
