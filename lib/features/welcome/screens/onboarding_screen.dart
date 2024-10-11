import 'package:flutter/material.dart';
import 'package:tidmuv/features/auth/options_screen.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';
import 'package:tidmuv/utilities/shared_components/custom_button_one.dart';
import 'package:tidmuv/utilities/shared_components/dot_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> onboardingImages = [
    "images/Group.png",
    "images/Group (1).png",
    "images/Group 33293.png",
  ];
  final List<String> onboardingHeaderText = [
    "Connect with Travelers",
    "Safe, Transparent and Reliable",
    "Track your package from anywhere",
  ];
  final List<String> onboardingMessage = [
    "Connect with travels going your way! Send or receive packages conveniently while reducing carbon footprint",
    "Your packages, your security. Experience transparent and secure transaction every step of the way",
    "Stay informed at every stage of the delivery. Monitor your packages progress from pickup to delivery.",
  ];

  int currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (currentPageIndex < onboardingImages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OptionsScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEEE5),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingImages.length,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(onboardingImages[index]);
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OptionsScreen()));
                        },
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 270,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < onboardingImages.length; i++)
                            DotIndicator(isActive: i == currentPageIndex),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        onboardingHeaderText[currentPageIndex],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Spacer(),
                      Text(
                        onboardingMessage[currentPageIndex],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20,),
                      CustomButtonOne(
                        title: "Continue",
                        onClick: _goToNextPage,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
