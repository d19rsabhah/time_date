import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Time & Date Demo'),
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
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hare Krsna'),
            Text(
              'Current Date: ${time.year}:${time.month}:${time.day}',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Current Time: ${time.hour}:${time.minute}:${time.second}',
              style: TextStyle(fontSize: 15),
            ),
            // Text(
            //   'Current Year: ${time.year}',
            //   style: TextStyle(fontSize: 15, color: Colors.orange),
            // ),
            // Text(
            //   'Current Month: ${time.month}',
            //   style: TextStyle(fontSize: 15, color: Colors.green),
            // ),
            // Text(
            //   'Current Day: ${time.day}',
            //   style: TextStyle(fontSize: 15, color: Colors.yellow),
            // ),
            Text(
              'Week-Day: ${time.weekday}',
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            Text(
              'Current Time: ${DateFormat('jms').format(time)}',
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Current Time'))
          ],
        ),
      )),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
