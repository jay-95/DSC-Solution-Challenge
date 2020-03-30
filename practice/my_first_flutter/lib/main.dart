import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { // 바뀌지 않는, 변하지 않는 내용
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomepage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomepage extends StatefulWidget { // 바뀌는 것, 변하는 내용
  MyHomepage({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title) ,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.display1)
        ],)
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: _IncrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add)
    ),
    );
  }

  void _IncrementCounter() {
    setState(() {
      _counter += 2;
    });
  }
}

