import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:appstore/core/utils/app_locator.dart';
import 'package:appstore/domain/repositories/counter_repository.dart';
import 'package:appstore/presentation/stores/counter_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CounterStore _counterStore;

  @override
  void initState() {
    super.initState();
    _counterStore = CounterStore(AppLocator.get<CountRepository>());
  }

  @override
  void dispose() {
    _counterStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador:',
              style: TextStyle(fontSize: 20),
            ),
            Observer(
              builder: (_) => Text(
                _counterStore.count.toString(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counterStore.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
