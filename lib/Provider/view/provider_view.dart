import 'package:flutter/material.dart';
import 'package:hello_there/Provider/provider/color_provider.dart';
import 'package:provider/provider.dart';

/// ProviderView displays the view using Provider as a state manager.
class ProviderView extends StatelessWidget {
  /// The title of the current page that we will display in the AppBar.
  final String title;

  /// The constructor for the ProviderView widget with [title] as a parameter.
  const ProviderView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
		/// Assigns the 'color' variable inside the Provider to a new variable
    final Color color = Provider.of<ColorProvider>(context).color;

    return GestureDetector(
			/// Calls the 'changeColor()' method inside the Provider and changes the
			/// background color of the screen every time it is pressed.
      onTap: () {
        Provider.of<ColorProvider>(context, listen: false).changeColor();
      },
      child: Scaffold(
        backgroundColor: color,
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
    );
  }
}
