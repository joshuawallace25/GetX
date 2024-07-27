import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:inter/controller/tap_controller.dart';
import 'package:inter/pages/homescreen.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    //Get.find<TapController>().x.toString
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => MyHomePage());
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
                child: Text(controller.x.toString(),
                    style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    ));
  }
}
