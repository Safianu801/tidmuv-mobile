import 'package:flutter/material.dart';
import 'package:tidmuv/features/notification/components/notification_card_style.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(context: context),
        centerTitle: true,
        title: const Text("Notification"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return NotificationCardStyle();
        },
      ),
    );
  }
}
