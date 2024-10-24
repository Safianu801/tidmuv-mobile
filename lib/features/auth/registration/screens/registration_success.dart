import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/login/screens/login_screen.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';

class RegistrationSuccess extends StatefulWidget {
  const RegistrationSuccess({super.key});

  @override
  State<RegistrationSuccess> createState() => _RegistrationSuccessState();
}

class _RegistrationSuccessState extends State<RegistrationSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const Spacer(),
          CustomButtonOne(title: "Finish", onClick: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
          })
        ],
      ),
    );
  }
}
