import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/Widgets/Textfield.dart';
import 'package:car_booking/constants/constants.dart';
import 'package:car_booking/screens/Home/components/Drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  int no_of_person = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorYellow,
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
                           Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              height: 60,
                              width: 70,
                              // color: appColorYellow,
                              child: GestureDetector(
                                onTap: (){showModalBottomSheet(
                                  
                                  
                                  context: context, builder: (_){
                                  return const SizedBox(
                                    height: 300,
                                    // color: appColorBlue,
                                    child: Row(children: [
                                      CircleAvatar(
                                        radius: 40,
                                        child: CustomText(text: "-",fontsize: 100,)),
                                      CustomText(text: "  1  ",fontsize: 100,),
                                      CircleAvatar(
                                        radius: 40,
                                        child: Icon(Icons.add, size: 50,))
                                    ],),
                                  );
                                });},
                                child: SizedBox(child: Text("$no_of_person"),)
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


