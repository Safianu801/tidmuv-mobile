import 'package:flutter/material.dart';
import 'package:tidmuv/features/scanner/screens/capture_image_screen.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_back_button.dart';
import '../../../utilities/shared_components/custom_button_one.dart';
import '../../../utilities/shared_components/custom_text_Field.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  final amountToTravelController = TextEditingController();
  final quantityController = TextEditingController();
  bool isChecked = false;
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
        title: const Text("Documents"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            CustomTextField(hintText: "Amount to travel", controller: amountToTravelController, isObscure: false),
            const SizedBox(height: 5,),
            RichText(text: const TextSpan(
              children: [
                TextSpan(
                  text: "Please Note:",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColors.primaryColor)
                  )
                ),
                TextSpan(
                  text: "The minimum amount you are ready to give traveler for delivery is \$50",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                  )
                ),
              ]
            )),
            const SizedBox(height: 50,),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: quantityController,
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
                              color: const Color(AppColors.primaryColor)),
                          child: const Center(
                            child: Icon(Icons.remove, color: Colors.white,),
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
                              color: const Color(AppColors.primaryColor)),
                          child: const Center(
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            RichText(text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Please Note:",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(AppColors.primaryColor)
                      )
                  ),
                  TextSpan(
                      text: "You are only allowed to send 5 documents at a time, if needed you are allowed to use Parcel option.",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      )
                  ),
                ]
            )),
            const Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: const Color(AppColors.primaryColor))
                    ),
                    child: isChecked ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(AppColors.primaryColor)
                          ),
                        ),
                      ),
                    ) : const SizedBox.shrink(),
                  ),
                ),
                const SizedBox(width: 10,),
                const Expanded(child: Text(
                  "Please confirm your document have been properly packaged for delivery",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey
                  ),
                ))
              ],
            ),
            const SizedBox(height: 10,),
            CustomButtonOne(title: "Capture Image", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CaptureImageScreen()));
            })
          ],
        ),
      ),
    );
  }
}
