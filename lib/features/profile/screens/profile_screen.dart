import 'package:flutter/material.dart';
import 'package:tidmuv/features/profile/components/profile_quick_action_button.dart';
import 'package:tidmuv/utilities/shared_components/custom_back_button.dart';

import '../../../utilities/constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _showModalBottomSheet(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Here is the detailed setting information for $title.',
                style: TextStyle(fontSize: 14),
              ),
              // Add additional content or options here
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(AppColors.primaryColor),
        surfaceTintColor: const Color(AppColors.primaryColor),
        leading: CustomBackButton(context: context),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
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
                  Icons.logout,
                  size: 20,
                  color: Color(AppColors.primaryColor),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const Text(
                      "Emily Johnson",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Los Angeles, California ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 11),
                        ),
                        Image.asset(
                          "images/marker-pin-04.png",
                          color: Colors.white,
                          scale: 2,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                  const EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Package",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          StatCard(percentage: 80,)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Account Details",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      ProfileQuickActionButton(
                        title: "Change Password",
                        onClick: () => _showModalBottomSheet(context, "Change Password"),
                      ),
                      ProfileQuickActionButton(
                        title: "Notification",
                        onClick: () => _showModalBottomSheet(context, "Notification"),
                      ),
                      ProfileQuickActionButton(
                        title: "Enable Face ID",
                        onClick: () => _showModalBottomSheet(context, "Enable Face ID"),
                      ),
                      ProfileQuickActionButton(
                        title: "Privacy Policy",
                        onClick: () => _showModalBottomSheet(context, "Privacy Policy"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class StatCard extends StatelessWidget {
  final double percentage;
  const StatCard({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(AppColors.primaryColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Container(decoration: const BoxDecoration(color: Colors.transparent), child: SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomPaint(
                  size: const Size(100, 100),
                  painter: CircularProgressPainter(percentage),
                  child: Center(
                    child: Text(
                      '${percentage.toStringAsFixed(0)}%',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),)),
            Expanded(child: Container(decoration: const BoxDecoration(color: Colors.transparent), child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text(
                "Profile Information",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              const Text(
                "4 of 5 Completed",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(
                    child: Text(
                      "Complete Profile >",
                      style: TextStyle(
                        color: Color(AppColors.primaryColor),
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
              )
            ],),),),
          ],
        ),
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double percentage;

  CircularProgressPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.green[100]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;

    // Paint for the progress arc
    Paint progressPaint = Paint()
      ..color = Colors.green[700]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15
      ..strokeCap = StrokeCap.round;

    // Draw background circle
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2 - 5,
      backgroundPaint,
    );

    // Draw progress arc
    double sweepAngle = (percentage / 100) * 2 * 3.141592653589793;
    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2 - 5),
      -3.141592653589793 / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}