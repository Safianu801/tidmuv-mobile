import 'package:flutter/material.dart';
import 'package:tidmuv/features/scanner/screens/capture_image_screen.dart';
import 'package:tidmuv/features/scanner/screens/scan_qr_code_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

class MyQrCodeScreen extends StatefulWidget {
  const MyQrCodeScreen({super.key});

  @override
  State<MyQrCodeScreen> createState() => _MyQrCodeScreenState();
}

class _MyQrCodeScreenState extends State<MyQrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CaptureImageScreen()));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Icon(Icons.qr_code_scanner),
                ),
              ),
            ),
          )
        ],
        title: const Text("My QR Code"),
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
            CustomButtonOne(title: "Generate New Code", onClick: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ScanQrCodeScreen()));

            })
          ],
        ),
      ),
    );
  }
}
