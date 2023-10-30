import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/Widgets/Textfield.dart';
import 'package:car_booking/constants/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorGrey,
      appBar: AppBar(
        title: const Text("Book ride"),
        centerTitle: true,
        backgroundColor: appColorYellow,

        // leading: const Icon(Icons.safety_check),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Center(
        //   padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CustomTextfield(
                          hintText: "Leaving from",
                          prefixIcon: Icon(Icons.my_location),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomTextfield(
                          hintText: "Going to",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              width: 200,
                              height: 60,
                              // color: appColorYellow,
                              child: const CustomText(
                                text: "   Calender",
                                fontsize: 23,
                                color: appColorGrey,
                              )),
                          Container(
                            height: 50,
                            width: 1,
                            color: appColorGrey,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: SizedBox(
                              height: 60,
                              width: 70,
                              // color: appColorYellow,
                              child: LastTextField(
                                readOnly: true,
                                hintText: "1",
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 63,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: appColorBlue,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Search ",
                              fontsize: 18,
                              color: appColorWhite,
                            ),
                            Icon(
                              Icons.search,
                              color: appColorWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: appColorWhite.withOpacity(0.2),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  
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
            Divider(),
            ShimmerContainerEffect(
              width: 150,
            ),
            Divider(),
            ShimmerContainerEffect(
              width: 200,
            ),
            Divider(),
            ShimmerContainerEffect(
              width: 100,
            ),
            Divider(),
            ShimmerContainerEffect(
              width: 150,
            ),
            Divider(),
            ShimmerContainerEffect(
              width: 200,
            ),
            Divider(),
            ShimmerContainerEffect(
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerContainerEffect extends StatelessWidget {
  final double? width;
  const ShimmerContainerEffect({
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: appColorGrey,
      ),
    );
  }
}
