import 'dart:math';

import 'package:flutter/material.dart';

/// The provider for the [color] variable
class ColorProvider extends ChangeNotifier {
  /// This is a Color varaiable that will be updated with a new random
  /// primary color every time the method [changeColor] is called.
  Color color = Colors.white;

  /// This method chooses a random color from a list of primary colors
  /// and assigns it to the [color] variable, and then calls the
  /// 'notifyListeners()' method to refresh the page and show the changes
  void changeColor() {
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    notifyListeners();
  }
}
