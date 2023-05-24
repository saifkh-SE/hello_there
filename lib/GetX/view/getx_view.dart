import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_there/GetX/controller/getx_controller.dart';

/// GetXView displays the view using GetX as a state manager and
/// extends the GetXController.
class GetXView extends GetView<GetXController> {
  /// The title of the current page that we will display in the AppBar.
  final String title;

  /// The constructor for the GetXView widget with [title] as a parameter.
  const GetXView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// Calls the 'changeColor()' method inside the GetXController and changes
      /// the background color of the screen every time it is pressed
      onTap: () {
        controller.changeColor();
      },
      child: Obx(
        () => Scaffold(
          backgroundColor: controller.color.value,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(
              title,
            ),
          ),
          body: Center(
            child: Text(
              'Hello there',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}
