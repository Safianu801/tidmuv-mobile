import 'package:flutter/material.dart';
import 'package:tidmuv/features/wallet/screens/withdraw_funds_screen.dart';
import 'package:tidmuv/features/wallet/components/transaction_history_card_style.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../home/screens/package_history_screen.dart';
import '../../profile/screens/profile_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final trackingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final options = [
    "All",
    "Pending",
    "Disputed",
    "Completed",
  ];
  String selectedOption = "All";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(AppColors.primaryColor),
        surfaceTintColor: const Color(AppColors.primaryColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Emily Johnson",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Los Angeles, California ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                          Image.asset(
                            "images/marker-pin-04.png",
                            color: Colors.white,
                            scale: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(AppColors.primaryColor),
        surfaceTintColor: const Color(AppColors.primaryColor),
        width: 255,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(AppColors.primaryColor),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileScreen()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Emily Johnson",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Los Angeles, California",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.location_on),
              title: const Text('Tracking'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.history),
              title: const Text('Package History', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PackageHistoryScreen(),
                ));
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('My Wallet'),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.green,),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.support),
              title: const Text('Support'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Available Balance",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Text(
                          "\$ 15,000,25",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WithdrawFundsScreen()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Icon(Icons.attach_money_rounded, color: Color(AppColors.primaryColor),),
                        ),
                      ),
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
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 10.0, left: 10.0, top: 20.0),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color(AppColors.primaryColor),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: const Center(
                                child: Icon(Icons.filter_alt_rounded, color: Colors.white,),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            for (int i = 0; i < options.length; i++)
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedOption = options[i];
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: selectedOption == options[i] ? const Color(AppColors.primaryColor) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                                      child: Text(
                                        options[i],
                                        style: TextStyle(
                                            color: selectedOption == options[i] ? Colors.white : const Color(AppColors.primaryColor)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recent Package",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const PackageHistoryScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "View All",
                              style: TextStyle(
                                  color: Color(AppColors.primaryColor)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      for (int i = 0; i < 10; i++)
                        const TransactionHistoryCardStyle()
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
