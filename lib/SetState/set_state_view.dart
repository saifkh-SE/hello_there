import 'dart:math';

import 'package:flutter/material.dart';

/// SetStateView displays the view using the default setState and StatefulWidget
/// as a state manager.
class SetStateView extends StatefulWidget {
  /// The title of the current page that we will display in the AppBar.
  final String title;

  /// The constructor for the SetStateView widget with [title] as a parameter.
  const SetStateView({super.key, required this.title});

  @override
  State<SetStateView> createState() => _SetStateViewState();
}

class _SetStateViewState extends State<SetStateView> {
  /// This is a private Color varaiable that will be updated with a new random
  /// primary color every time the method [_changeColor] is called.
  Color _color = Colors.white;

  /// This method chooses a random color from a list of primary colors
  /// and assigns it to the [_color] variable.
  void _changeColor() {
    setState(() {
      _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// Calls the '_changeColor()' method and changes the background color
      /// of the screen every time it is pressed.
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
          ),
        ),
        body: Center(
          child: Text(
            'Hello there',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
