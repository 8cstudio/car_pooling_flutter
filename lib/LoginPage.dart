import 'package:car_booking/Widgets/Textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Login", 
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: const Column(
                children:  [
                   CustomTextfield(
                    hintText: "Email or Phone number",
                  ),
                  LastTextField(
                    hintText: "Password",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Center(
              child: Container(
                width: 120,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue[800]
                ),
                child: Center(child: Text("Login", style: TextStyle(color: Colors.white.withOpacity(.7)),)),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

