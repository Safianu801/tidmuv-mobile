import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class TransactionHistoryCardStyle extends StatelessWidget {
  const TransactionHistoryCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "name of user",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "07 Jan, 08:30pm",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Column(
                children: [
                  Text(
                    "\$85.00",
                    style: TextStyle(
                      color: Color(AppColors.primaryColor),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    ),
                  ),
                  Text(
                    "pending",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 10
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
