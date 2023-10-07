import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx_controller/first_page/counter_controller.dart';

class SecondPage extends GetWidget<CounterController> {
  void _incrementCounter() {
    controller.counter += 1;
    controller.update();
  }

  @override
  Widget build(BuildContext context) {
    // Get.put<CounterController>(CounterController(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<CounterController>(builder: (controller) {
              return Text(
                controller.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
