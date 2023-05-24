import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// GetXController controls the color variable based on user interaction.
class GetXController extends GetxController {

	/// This is a Color varaiable that will be updated with a new random
	/// primary color every time the method [changeColor] is called.
  Rx<Color> color = Colors.white.obs;

	/// This method chooses a random color from a list of primary colors
	/// and assigns it to the [color] variable.
  void changeColor() {
    color.value = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
