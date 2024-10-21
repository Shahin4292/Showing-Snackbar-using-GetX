import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar("SnackBar Title", "This is SnackBar",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  animationDuration: const Duration(
                    milliseconds: 3000,
                  ),
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  forwardAnimationCurve: Curves.bounceInOut,
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 15,
                  ),
                  userInputForm: Form(child: TextFormField()),
                  mainButton: TextButton(
                    onPressed: () {},
                    child: const Text("retry"),
                  ),
                  backgroundColor: Colors.black);
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
