import 'package:flutter/material.dart';
import 'package:tidmuv/features/notification/screens/notification_view_screen.dart';

class NotificationCardStyle extends StatelessWidget {
  const NotificationCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationViewScreen()));
        },
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                    child: Container(
                  height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/Frame 1286.png"),
                    ))),
                const SizedBox(width: 5,),
                const Expanded(
                    flex: 9,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "notification title",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "notification message position",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
