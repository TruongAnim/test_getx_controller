import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:test_getx_controller/first_page/first_page.dart';
import 'package:test_getx_controller/second_page/second_page.dart';

import 'first_page/counter_controller.dart';
import 'init_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: InitialBinding(),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => MainPage(),
        ),
        GetPage(
          name: '/first_page',
          page: () => const FirstPage(),
        ),
        GetPage(
          name: '/second_page',
          page: () => SecondPage(),
        ),
        // Define other named routes here
      ],
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
              builder: (controller) {
                return Text('Main page body ${controller.counter}');
              },
            ),
            ElevatedButton(
              onPressed: () async {
                await Get.toNamed('/first_page');
                Get.toNamed('/second_page');
              },
              child: const Text("To other page"),
            ),
          ],
        ),
      ),
    );
  }
}
