import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hello_there/GetX/binding/getx_binding.dart';
import 'package:hello_there/GetX/view/getx_view.dart';
import 'package:hello_there/Provider/provider/color_provider.dart';
import 'package:hello_there/Provider/view/provider_view.dart';
import 'package:hello_there/SetState/set_state_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Main());
}

/// The top-level widget of the application that represents the root of the tree
class Main extends StatelessWidget {
  /// The constructor for the Main widget.
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: GetMaterialApp(
        title: 'Hello There',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

/// This widget represents the Home page of the application.
class HomeView extends StatelessWidget {
  /// The constructor for the HomeView widget.
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Hello there',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A button that navigates to the SetStateView when pressed
            ElevatedButton(
              onPressed: () {
                Get.to(() => const SetStateView(title: 'SetState'));
              },
              child: const Text('SetState'),
            ),
            const SizedBox(
              height: 8,
            ),
            // A button that navigates to the ProviderView when pressed
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ProviderView(title: 'Provider'));
              },
              child: const Text('Provider'),
            ),
            const SizedBox(
              height: 8,
            ),
            // A button that navigates to the GetXView when pressed
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetXView(title: 'GetX'),
                  binding: GetXBinding(),
                );
              },
              child: const Text('GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
