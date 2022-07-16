import 'package:flutter/material.dart';
import 'package:learn_provider/provider/counter.dart';
import 'package:learn_provider/screens/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.next_plan),
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const SettingScreen(),
              );
              Navigator.push(context, route);
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: () {
              counter.increment();
            },
          ),
        ],
      ),
    );
  }
}
