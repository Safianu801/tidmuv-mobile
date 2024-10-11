import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/forgot_password/screens/create_new_password_screen.dart';

import '../../../../utilities/constants/app_colors.dart';
import '../../../../utilities/shared_components/custom_back_button.dart';
import '../../../../utilities/shared_components/custom_button_one.dart';

class ForgotPasswordOtpScreen extends StatefulWidget {
  const ForgotPasswordOtpScreen({super.key});

  @override
  State<ForgotPasswordOtpScreen> createState() => _ForgotPasswordOtpScreenState();
}

class _ForgotPasswordOtpScreenState extends State<ForgotPasswordOtpScreen> {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(4, (index) => TextEditingController());
  final List<ValueNotifier<bool>> _inputStatus = List.generate(4, (index) => ValueNotifier(false));

  // Future<void> verifyAccount()

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNodes[0].requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNodes.forEach((node) => node.dispose());
    _controllers.forEach((controller) => controller.dispose());
    _inputStatus.forEach((notifier) => notifier.dispose());
    super.dispose();
  }

  void _nextField(String value, int index) {
    _inputStatus[index].value = value.isNotEmpty;
    if (value.length == 1) {
      if (index < _focusNodes.length - 1) {
        _focusNodes[index + 1].requestFocus();
      } else {
        _focusNodes[index].unfocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter OTP Verification",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              "We have sent a verification code to your email",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
            ),
            const Text(
              "demouser@gmail.com",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(4, (index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ValueListenableBuilder(
                        valueListenable: _inputStatus[index],
                        builder: (context, hasInput, child) {
                          return TextField(
                            controller: _controllers[index],
                            focusNode: _focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            onChanged: (value) => _nextField(value, index),
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              border: const OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          );
                        },
                      ),
                    )
                );
              }),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Disn't reveive a code?",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                        color: Color(AppColors.primaryColor)
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButtonOne(title: "Verify", onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateNewPasswordScreen()));
            })
          ],
        ),
      ),
    );
  }
}
