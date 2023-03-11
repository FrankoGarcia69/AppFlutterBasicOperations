import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Color.fromARGB(255, 235, 217, 190),
      ),
      home: const MyHomePage(title: 'Tarea 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter+=2;
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter-=2;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter*=2;
    });
  }

  void _divideCounter() {
    setState(() {
      _counter=(_counter/2).floor(); 
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:', style: TextStyle(fontSize: 50.0, color: Colors.blue)
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48.0, color: Color.fromARGB(137, 39, 39, 39)),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 25),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.exposure_plus_2),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: _reduceCounter,
            tooltip: 'Reduce',
            child: const Icon(Icons.exposure_minus_2),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: _multiplyCounter,
            tooltip: 'Multiply',
            child: const Text('X2',style: TextStyle(fontSize: 18.0),),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(    
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: const Text('/2',style: TextStyle(fontSize: 18.0),),
          ),   
      ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
