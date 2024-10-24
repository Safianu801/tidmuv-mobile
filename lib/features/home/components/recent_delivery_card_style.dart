import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class RecentDeliveryCardStyle extends StatelessWidget {
  const RecentDeliveryCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        height: 190,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(AppColors.primaryColor)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: Text(
                                "Standard",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(AppColors.primaryColor)
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Delivery fee",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                            ),
                          ),
                          Text(
                            "\$ 75.50",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "07 Jan, 02:30pm",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    const Text(
                      "Los Angeles",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ],),
                  const SizedBox(width: 5,),
                  Row(children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("images/marker-pin-04.png"),
                      ),
                    ),
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          height: 1,
                          width: 5,
                          decoration: const BoxDecoration(
                            color: Colors.white
                          ),
                        ),
                      ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("images/Icon (1).png"),
                      ),
                    ),
                  ],),
                  const SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "07 Jan, 06:30pm",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.3)
                        ),
                      ),
                      const Text(
                        "Sacramento",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                    ],),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
