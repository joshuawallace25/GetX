import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  void increeseX() {
    _x++;
    update();
    print(_x);
  }

  void decreaseX() {
    _x--;
    update();
  }
}
