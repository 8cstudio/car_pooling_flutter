// ignore_for_file: file_names

import 'package:car_booking/constants/constants.dart';
import 'package:car_booking/screens/Home/components/ShimmerContainer.dart';
import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: appColorWhite.withOpacity(0.2),
      child: const Padding(
        padding:  EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: appColorGrey,
                      radius: 70,
                      child: Icon(
                        Icons.person,
                        size: 90,
                      ),
                    ),
                  ],
                ),
                Divider(),
                ShimmerContainerEffect(
                  width: 200,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 150,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 200,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 100,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 150,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 200,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  width: 200,
                ),
                SizedBox(height: 10),
                ShimmerContainerEffect(
                  // width: 200,
                  height: 160,
                ),
              ],
            ),
            Positioned(
              top: 140,
              left: 170,
              child: CircleAvatar(
                backgroundColor: appColorGrey,
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
