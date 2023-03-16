import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _number1Controller = TextEditingController();
  final _number2Controller = TextEditingController();
  var _result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: Column(
          children: [
            TextField(
                decoration: const InputDecoration(labelText: 'Number 1'),
                keyboardType: TextInputType.number,
                controller: _number1Controller),
            TextField(
                decoration: const InputDecoration(labelText: 'Number 2'),
                keyboardType: TextInputType.number,
                controller: _number2Controller),
            Text('Result: $_result',
                style: Theme.of(context).textTheme.titleMedium),
            TextButton(
                onPressed: () {
                  final number1 = int.parse(_number1Controller.text);
                  final number2 = int.parse(_number2Controller.text);
                  setState(() {
                    _result = number1 + number2;
                  });
                },
                child: const Text('Add')),
          ],
        ),
      ),
    );
  }
}
