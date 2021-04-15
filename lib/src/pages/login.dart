import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rasanadmin/src/widgets/custom_textfield.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.red, Colors.purple])),
            ),
            Align(
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 20, top: 30),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hintText: 'AdminUsername',
                    hintcolor: Colors.white,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    hintcolor: Colors.white,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Get.to(AllOrders());
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.purple),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
