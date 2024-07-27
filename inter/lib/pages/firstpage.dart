import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:inter/controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: (Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ))),
      ),
      body: Column(
        children: [
          GetBuilder<TapController>(builder: (_) {
            return Container(
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
            );
          }),
          GestureDetector(
            onTap: () {
              controller.decreaseX();     },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text("Decrease X",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
