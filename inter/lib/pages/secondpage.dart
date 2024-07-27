import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inter/pages/thirdpage.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => ThirdPage());
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Center(
                child: Text("Go to thrid Page",
                    style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    ));
  }
}
