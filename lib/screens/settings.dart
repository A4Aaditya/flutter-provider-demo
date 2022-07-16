import 'package:flutter/material.dart';
import 'package:learn_provider/provider/counter.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.exposure_minus_1),
        onPressed: () {
          counter.decrement();
        },
      ),
    );
  }
}
