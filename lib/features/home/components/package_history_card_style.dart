import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class PackageHistoryCardStyle extends StatelessWidget {
  const PackageHistoryCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 90,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            const Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("ES56289S732", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("04 Jan, 12:30pm", style: TextStyle(color: Colors.grey, fontSize: 12,),),
                  Text("Los Angeles", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                ],
              )
            ],)),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset("images/marker-pin-04.png"),
                    ),
                  ),
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        height: 1, width: 5,
                        decoration: const BoxDecoration(
                          color: Colors.green
                        ),
                      ),
                    ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset("images/Icon (1).png"),
                    ),
                  ),
                ],
              )
            ],)),
            Expanded(child: Column(children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Center(
                  child: Text(
                    "Delivered",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 13
                    ),
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("04 Jan, 12:30pm", style: TextStyle(color: Colors.grey, fontSize: 12,),),
                  Text("Los Angeles", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                ],
              )
            ],)),
          ],
        ),
      ),
    );
  }
}
