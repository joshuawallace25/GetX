import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inter/controller/tap_controller.dart';
import 'package:inter/pages/firstpage.dart';
import 'package:inter/pages/secondpage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<TapController>(builder: (tapController) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Center(
                        child: Text(tapController.x.toString(),
                            style: TextStyle(color: Colors.white))),
                  );
                }),
                GestureDetector(
                  onTap: () {
                    controller.increeseX();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child:
                            Text("Tap", style: TextStyle(color: Colors.white))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => FirstPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text("Go to Firsat Page",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => Secondpage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text("Go to Second Page",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            )));
  }
}
