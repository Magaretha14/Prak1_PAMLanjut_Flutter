import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 210, 126),
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
                onPressed: () {
                  _reset();
                },
                child: const Text("Reset")),
            TextButton(
                onPressed: () {
                  _decrementCounter();
                },
                child: const Text('Minus')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/pink.jpg',
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: 20,
                ),
                Image.asset(
                  'images/pink.jpg',
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: 20,
                ),
                Image.network(
                  'https://png.pngtree.com/png-vector/20191009/ourlarge/pngtree-cute-cartoon-dog-puppy-for-design-element-png-image_1788152.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            )
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
