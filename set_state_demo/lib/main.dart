import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //Todo update state using setState
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    //Todo update state using setState
    setState(() {
      _counter--;
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.all(20),
                  child: RaisedButton(
                    child: Text("-1",),
                    textColor: Colors.white,
                    color: Colors.black54,
                    elevation: 10.0,
                    onPressed: (){
                      //Todo update UI data Using setState
                      _decrementCounter();
                    },

                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: RaisedButton(
                    child: Text("+1"),
                    textColor: Colors.white,
                    color: Colors.black54,
                    elevation: 10,
                    onPressed: (){
                      //Todo update UI data Using setState
                      _incrementCounter();
                    },
                  ),
                )

              ],
            ),

          ],
        ),
      ),
    );
  }
}
