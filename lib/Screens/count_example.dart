import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/Provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child){
          return Text(value.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { countProvider.setVal(); },
        child: Icon(Icons.add),
      ),
    );
  }
}
